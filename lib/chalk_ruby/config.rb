require 'faraday'
require 'chalk_ruby/defaults'
require 'chalk_ruby/logger_helper'
require 'chalk_ruby/http/http_requester_chalk'
require 'chalk_ruby/http/response'
require 'chalk_ruby/token'


module ChalkRuby
  class Config
    attr_accessor :client_id,
                  :client_secret,
                  :query_server,
                  :api_server,
                  :environment,
                  :query_timeout,
                  :api_timeout,
                  :connect_timeout,
                  :query_service_root_ca_path,
                  :additional_headers,
                  :eagerly_initialize_connection_pool

    # Creates a new ChalkRuby::Config object for use with ChalkRuby::Client.
    #
    # @option options [String?] :client_id
    #   The Chalk client ID.
    #   If not provided, it will be read from the CHALK_CLIENT_ID environment variable.
    #
    # @option options [String?] :client_secret
    #   Chalk client secret.
    #   If not provided, it will be read from the CHALK_CLIENT_SECRET environment variable.
    #
    # @option options [String?] :query_host
    #   The query server to use.
    #   If not provided, it will be read from the CHALK_QUERY_SERVER environment variable.
    #
    # @option options [String?] :api_host
    #   The API server to use.
    #   If not provided, it will be read from the CHALK_API_SERVER environment variable.
    #
    # @option options [Float?] :query_timeout
    #   The timeout for query operations (in seconds).
    #
    # @option options [Float?] :api_timeout
    #   The timeout for non-query API operations (in seconds).
    #
    # @option options [Float?] :connect_timeout
    #   The timeout for connect operations (in seconds).
    #
    # @option options [String?] :query_service_root_ca_path
    #   The root ca to use for trusting SSL verifying connections to the query server in grpc.
    #
    # @option options [Hash<String, String>?] :additional_headers
    #  Additional headers to be sent with every request. Typically not required.
    #
    # @option options [Boolean?] :eagerly_initialize_connection_pool
    #  Whether to eagerly initialize connections to the query and API servers.
    #  When true, connections will be pre-warmed during client initialization.
    #  Default is false (lazy initialization).
    #
    def initialize(opts = {})
      @client_id                        = opts[:client_id] || ENV['CHALK_CLIENT_ID']
      @client_secret                    = opts[:client_secret] || ENV['CHALK_CLIENT_SECRET']
      @environment                      = opts[:environment] || ENV['CHALK_ACTIVE_ENVIRONMENT']
      @query_server                     = opts[:query_server] || ENV['CHALK_QUERY_SERVER'] || Defaults::QUERY_SERVER
      @api_server                       = opts[:api_server] || ENV['CHALK_API_SERVER'] || Defaults::API_SERVER
      @query_timeout                    = opts[:query_timeout] || Defaults::QUERY_TIMEOUT
      @api_timeout                      = opts[:api_timeout] || Defaults::API_TIMEOUT
      @connect_timeout                  = opts[:connect_timeout] || Defaults::CONNECT_TIMEOUT
      @query_service_root_ca_path       = opts[:query_service_root_ca_path] || Defaults::ROOT_CA_PATH
      @additional_headers = opts[:additional_headers] || {}
      @eagerly_initialize_connection_pool = opts[:eagerly_initialize_connection_pool] || false

      raise ChalkError, 'No Client ID provided, please set :client_id' if @client_id.nil?
      raise ChalkError, 'No Client Secret provided, please set :client_secret' if @client_secret.nil?
    end
  end
end
