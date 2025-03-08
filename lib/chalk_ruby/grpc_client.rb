require 'chalk_ruby/config'
require 'grpc'
require 'google/protobuf/struct_pb'
require 'chalk_ruby/protos/chalk/server/v1/auth_pb'
require 'chalk_ruby/protos/chalk/server/v1/auth_services_pb'
require 'chalk_ruby/protos/chalk/engine/v1/query_server_services_pb'
require 'date'
require 'chalk_ruby/grpc/auth_interceptor'
require 'chalk_ruby/error'


module ChalkRuby

  class GrpcClient
    # Create a new client.
    #
    # @param client_id [String]
    #   Chalk client ID.
    #   If not provided, it will be read from the CHALK_CLIENT_ID environment variable.
    #
    # @param client_secret [String]
    #   Chalk client secret.
    #   If not provided, it will be read from the CHALK_CLIENT_SECRET environment variable.
    #
    # @param environment [String]
    #   The Chalk environment id (not the name of the environment).
    #   If not provided, it will be read from the CHALK_ACTIVE_ENVIRONMENT environment variable.
    #
    # @param query_server [String]
    #   ChalkRuby query server
    #
    # @param api_server [String]
    #   ChalkRuby API server
    #
    # @param additional_headers [Hash[String, String]]
    #   Additional headers to be sent with every request. Typically not required.
    #
    # @return self

    def self.create(
      client_id = nil,
      client_secret = nil,
      environment = nil,
      query_server = nil,
      api_server = nil,
      additional_headers = {}
    )
      config = Config.new(
        client_id: client_id,
        client_secret: client_secret,
        environment: environment,
        query_server: query_server,
        api_server: api_server,
        additional_headers: additional_headers
      )
      create_with_config(config)
    end

    # Create a new client providing only a ChalkRuby::Config object
    #
    # @param config [ChalkRuby::Config]
    #
    # @return self
    #
    def self.create_with_config(config)
      new(config)
    end

    # Compute features values using online resolvers.
    # See https://docs.chalk.ai/docs/query-basics for more information.
    #
    # @param input [Hash[String, any]] The features for which there are known values, mapped to those values.
    #
    # @param output [[String]] Outputs are the features that you'd like to compute from the inputs.
    #     For example, `['user.age', 'user.name', 'user.email']`.
    #
    #     If an empty sequence, the output will be set to all features on the namespace
    #     of the query. For example, if you pass as input `{"user.id": 1234}`, then the query
    #     is defined on the `User` namespace, and all features on the `User` namespace
    #     (excluding has-one and has-many relationships) will be used as outputs.
    #
    # @param now [DateTime?]
    #     The time at which to evaluate the query. If not specified, the current time will be used.
    #     This parameter is complex in the context of online_query since the online store
    #     only stores the most recent value of an entity's features. If `now` is in the past,
    #     it is extremely likely that `None` will be returned for cache-only features.
    #
    #     This parameter is primarily provided to support:
    #        - controlling the time window for aggregations over cached has-many relationships
    #        - controlling the time window for aggregations over has-many relationships loaded from an
    #          external database
    #
    #     If you are trying to perform an exploratory analysis of past feature values, prefer `offline_query`.
    #
    # @param staleness [Hash[String, String]?]
    #     Maximum staleness overrides for any output features or intermediate features.
    #     See https://docs.chalk.ai/docs/query-caching for more information.
    #
    # @param tags [Hash[String, String]?]
    #     The tags used to scope the resolvers.
    #     See https://docs.chalk.ai/docs/resolver-tags for more information.
    #
    # @param branch [String?]
    #     If specified, Chalk will route your request to the relevant branch.
    #
    # @param correlation_id [String?]
    #     You can specify a correlation ID to be used in logs and web interfaces.
    #     This should be globally unique, i.e. a `uuid` or similar. Logs generated
    #     during the execution of your query will be tagged with this correlation id.
    #
    # @param query_name [String?]
    #     The semantic name for the query you're making, for example, `"loan_application_model"`.
    #     Typically, each query that you make from your application should have a name.
    #     Chalk will present metrics and dashboard functionality grouped by 'query_name'.
    #
    # @param query_name_version [String?]
    #    If query_name is specified, this specifies the version of the named query you're
    #    making. This is only useful if you want your query to use a NamedQuery with a
    #    specific name and a specific version. If a query_name has not been supplied, then
    #    this parameter is ignored.
    #
    # @param meta [Hash[String, String]?]
    #     Arbitrary `key:value` pairs to associate with a query.
    #
    # @param explain [Boolean?]
    #     Log the query execution plan. Requests using `explain=true` will be slower
    #     than requests using `explain=false`. If `"only"`, the query will not be executed,
    #     and only the query plan will be returned.
    #
    #     If true, 'include_meta' will be set to true as well.
    #
    # @param include_meta [Boolean?]
    #     Whether to include metadata about the query execution.
    #
    # @param store_plan_stages [Boolean?]
    #     If `true`, the output of each of the query plan stages will be stored.
    #     This option dramatically impacts the performance of the query,
    #     so it should only be used for debugging.
    #
    # @option options [Float?] :timeout
    #   Allows overriding default timeout for query operations (in seconds).
    #
    # @return [Hash[Symbol, String]]

    def ping
      query_service.ping(Chalk::Engine::V1::PingRequest.new(num: 1))
    end

    def query_bulk(
      input:,
      output:,
      now: nil,
      staleness: nil,
      context: nil,
      response_options: nil,
      body_type: nil,
      timeout: nil,
      query_name: nil,
      query_name_version: nil,
      correlation_id: nil
      )
      # Convert input to feather format
      inputs_feather = to_feather(input)


      r = Chalk::Common::V1::OnlineQueryBulkRequest.new(
        inputs_feather: inputs_feather,
        outputs: output.map { |o| Chalk::Common::V1::OutputExpr.new(feature_fqn: o) },
        staleness: staleness || {},
        context: context || Chalk::Common::V1::OnlineQueryContext.new(query_name: query_name, query_name_version: query_name_version, correlation_id: correlation_id),
        response_options: response_options || Chalk::Common::V1::OnlineQueryResponseOptions.new,
        body_type: body_type || :FEATHER_BODY_TYPE_UNSPECIFIED
      )

      if timeout.nil?
        response = query_service.online_query_bulk(r)
      else
        response = query_service.online_query_bulk(r, deadline: Time.now + timeout)
      end

      output_data = nil

      if (!response.scalars_data.nil?) and response.scalars_data.length > 0
        buffer = Arrow::Buffer.new(response.scalars_data)

        # Create a buffer reader
        buffer_reader = Arrow::BufferInputStream.new(buffer)

        # Create an IPC reader from the buffer reader
        reader = Arrow::FeatherFileReader.new(buffer_reader)

        # Read the table


        output_data = []

        table = reader.read


        field_names = table.schema.fields.map(&:name)
        table.each_record do |r|
          row = {}
          field_names.each do |f|
            row[f] = r[f]
          end

          output_data << row
        end
      end

      {
        data: output_data,
        errors: response.errors,
        meta: response.response_meta
      }
    end

    def query(
      input:,
      output:,
      now: nil,
      staleness: nil,
      tags: nil,
      branch: nil,
      correlation_id: nil,
      query_name: nil,
      query_name_version: nil,
      meta: nil,
      explain: nil,
      include_meta: nil,
      store_plan_stages: nil,
      timeout: nil
    )
      formatted_inputs = input.transform_values { |value| self.convert_to_protobuf_value(value) }

      context = Chalk::Common::V1::OnlineQueryContext.new(
        query_name: query_name,
        query_name_version: query_name_version,
      )

      r = Chalk::Common::V1::OnlineQueryRequest.new(
        inputs: formatted_inputs,
        outputs: output.map { |o| Chalk::Common::V1::OutputExpr.new(feature_fqn: o) },
        context: context
      )

      if timeout.nil?
        query_service.online_query(r)
      else
        query_service.online_query(r, deadline: Time.now + timeout)
      end
    end

    def get_token
      response = @auth_stub.get_token(
        Chalk::Server::V1::GetTokenRequest.new(
          client_id: @config.client_id,
          client_secret: @config.client_secret
        )
      )

      response.access_token
    end

    def get_unauthenticated_headers
      {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'X-Chalk-Env-Id': @config.environment
      }.merge(@config.additional_headers)
    end

    # Initializes the ChalkRuby client. Generally, you should not need to call this directly.
    # Instead, use ChalkRuby::Client.create or ChalkRuby::Client.create_with_config.
    #
    # @param chalk_config [ChalkRuby::Config]
    #   A ChalkRuby::Config object which contains your CLIENT_ID and CLIENT_SECRET
    #
    # @option adapter [Object]
    #   Adapter object used for the connection
    #
    # @option logger [Object]
    #
    # @option http_requester [Object]
    #   object used for the connection
    #
    def initialize(chalk_config, opts = {})
      @token = nil
      @config = chalk_config
      adapter = opts[:adapter] || Defaults::ADAPTER
      logger = opts[:logger] || LoggerHelper.create
      requester = opts[:http_requester] || Defaults::REQUESTER_CLASS.new(adapter: adapter, logger: logger)
      @transporter = Http::HttpRequesterChalk.new(requester: requester)
    end

    private

    def api_server_request(method:, path:, body:, headers:)
      @transporter.send_request(
        method: method,
        host: @config.api_server,
        path: path,
        timeout: @config.api_timeout,
        connect_timeout: @config.connect_timeout,
        body: body,
        headers: headers
      )
    end

    def engine_request(method:, path:, body:, headers:, timeout: nil)
      @transporter.send_request(
        method: method,
        host: query_server_host,
        path: path,
        timeout: timeout || @config.query_timeout,
        connect_timeout: @config.connect_timeout,
        body: body,
        headers: headers
      )
    end

    def auth_service
      if @auth_service.nil?
        @auth_service = Chalk::Server::V1::AuthService::Stub.new(@config.api_server, GRPC::Core::ChannelCredentials.new(), interceptors: [api_server_interceptor])
      end

      @auth_service
    end

    def api_server_interceptor
      if @api_server_interceptor.nil?
        @api_server_interceptor = ChalkRuby::Grpc::ApiServerInterceptor::new()
      end

      @api_server_interceptor
    end

    def engine_interceptor
      if @engine_interceptor.nil?
        @engine_interceptor = ChalkRuby::Grpc::AuthInterceptor.new(auth_service, @config.client_id, @config.client_secret, active_environment)
      end

      @engine_interceptor
    end

    def query_service
      if @query_service.nil?
        channel_creds =
          if @config.query_service_root_ca_path.nil?
            GRPC::Core::ChannelCredentials.new
          else
            GRPC::Core::ChannelCredentials.new(File.read(@config.query_service_root_ca_path))
          end

        @query_service = Chalk::Engine::V1::QueryService::Stub.new(query_server_host, channel_creds, interceptors: [engine_interceptor])
      end

      @query_service
    end

    def query_server_host
      explicit = @config.query_server
      ret =
        if explicit.nil?
          tok = valid_token
          found = @config.environment || tok.environment
          ret = found.nil? ? Defaults::QUERY_SERVER : tok.engines[found] || Defaults::QUERY_SERVER
        else
          ret = explicit
        end

      if ret.start_with?('http://') or ret.start_with?('https://')
        ret = ret.sub('https://', '').sub("http://", '')
      end

      if ret.end_with?(':443') or ret.end_with?(':80')
        ret
      else
        ret + ':443'
      end
    end

    def active_environment
      @config.environment || valid_token.environment
    end

    def valid_token
      if @token.nil? || @token.expired?
        t = get_token
        @token = t
        t
      else
        @token
      end
    end

    def convert_to_protobuf_value(value)
      case value
      when NilClass
        ::Google::Protobuf::Value.new(null_value: :NULL_VALUE)
      when Float
        ::Google::Protobuf::Value.new(number_value: value)
      when Integer
        ::Google::Protobuf::Value.new(number_value: value)
      when String
        ::Google::Protobuf::Value.new(string_value: value)
      when TrueClass, FalseClass
        ::Google::Protobuf::Value.new(bool_value: value)
      when Hash
        struct_value = Google::Protobuf::Struct.new(fields: value.transform_values { |v| convert_to_protobuf_value(v) })
        ::Google::Protobuf::Value.new(struct_value: struct_value)
      when Array
        list_value = Google::Protobuf::ListValue.new(values: value.map { |v| convert_to_protobuf_value(v) })
        ::Google::Protobuf::Value.new(list_value: list_value)
      else
        raise "Unsupported type: #{value.class}"
        end
      end

      private

    def to_feather(input_hash)
      require 'arrow'

      # Ensure all values in the input hash are arrays
      array_input_hash = input_hash.transform_values { |v| v.is_a?(Array) ? v : [v] }

      # Create a table from the transformed input hash
      table = Arrow::Table.new(array_input_hash)

      # Write to feather format in memory
      buffer = Arrow::ResizableBuffer.new(0)

      output = Arrow::BufferOutputStream.new(buffer)

      table.write_as_feather(output)

      # Remove trailing null bytes from the resizable buffer; the buffer is 512 aligned
      buffer.data.to_s.b.gsub(/ARROW1(.*)ARROW1.*/m) {"ARROW1#{$1}ARROW1"}
    end
    end
  end
