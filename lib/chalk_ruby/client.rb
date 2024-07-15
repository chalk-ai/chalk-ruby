require 'chalk_ruby/config'
require 'chalk_ruby/logger_helper'
require 'chalk_ruby/http/http_requester_chalk'
require 'chalk_ruby/http/response'
require 'chalk_ruby/token'

module ChalkRuby
  class Client
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
    #
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
    #
    def query(
      input:,
      output:,
      now: nil,
      staleness: nil,
      tags: nil,
      branch: nil,
      correlation_id: nil,
      query_name: nil,
      meta: nil,
      explain: nil,
      include_meta: nil,
      store_plan_stages: nil,
      timeout: nil
    )
      query_server_request(
        method: :post,
        path: 'v1/query/online',
        body: {
          inputs: input,
          outputs: output,
          now: now,
          staleness: staleness,
          context: tags && { tags: tags },
          branch_id: branch,
          correlation_id: correlation_id,
          query_name: query_name,
          meta: meta,
          explain: explain || false,
          include_meta: include_meta || false,
          store_plan_stages: store_plan_stages || false
        },
        headers: get_authenticated_engine_headers(branch: branch),
        timeout: timeout
      )
    end

    def get_token
      Token.new(
        api_server_request(
          method: :post,
          path: '/v1/oauth/token',
          body: {
            client_id: @config.client_id,
            client_secret: @config.client_secret,
            grant_type: 'client_credentials'
          },
          headers: get_unauthenticated_headers
        )
      )
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
      @token       = nil
      @config      = chalk_config
      adapter      = opts[:adapter] || Defaults::ADAPTER
      logger       = opts[:logger] || LoggerHelper.create
      requester    = opts[:http_requester] || Defaults::REQUESTER_CLASS.new(adapter: adapter, logger: logger)
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

    def query_server_request(method:, path:, body:, headers:, timeout: nil)
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

    def get_authenticated_engine_headers(branch:)
      t      = valid_token
      tokens = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + t.token,
        'X-Chalk-Env-Id': @config.environment || t.environment,
        'X-Chalk-Branch-Id': branch,
        'X-Chalk-Deployment-Type': branch.nil? ? 'engine' : 'branch'
      }
      tokens.merge(@config.additional_headers)
    end

    def get_unauthenticated_headers
      {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'X-Chalk-Env-Id': @config.environment
      }.merge(@config.additional_headers)
    end

    def query_server_host
      explicit = @config.query_server
      if explicit.nil?
        tok   = valid_token
        found = @config.environment || tok.environment
        found.nil? ? Defaults::QUERY_SERVER : tok.engines[found] || Defaults::QUERY_SERVER
      else
        explicit
      end
    end

    def valid_token
      if @token.nil? || @token.expired?
        t      = get_token
        @token = t
        t
      else
        @token
      end
    end
  end
end
