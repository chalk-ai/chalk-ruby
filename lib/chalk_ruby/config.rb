require 'faraday'
require 'chalk_ruby/defaults'

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
                  :additional_headers,

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
    # @option options [Integer?] :read_timeout
    #   The timeout for read operations (in seconds).
    #
    # @option options [Integer?] :write_timeout
    #   The timeout for write operations (in seconds).
    #
    # @option options [Integer?] :connect_timeout
    #   The timeout for connect operations (in seconds).
    #
    def initialize(opts = {})
      @client_id       = opts[:client_id] || ENV['CHALK_CLIENT_ID']
      @client_secret   = opts[:client_secret] || ENV['CHALK_CLIENT_SECRET']
      @environment     = opts[:environment] || ENV['CHALK_ACTIVE_ENVIRONMENT']
      @query_server    = opts[:query_server] || ENV['CHALK_QUERY_SERVER'] || Defaults::QUERY_SERVER
      @api_server      = opts[:api_server] || ENV['CHALK_API_SERVER'] || Defaults::API_SERVER
      @query_timeout   = opts[:query_timeout] || Defaults::API_TIMEOUT
      @api_timeout     = opts[:api_timeout] || Defaults::QUERY_TIMEOUT
      @connect_timeout = opts[:connect_timeout] || Defaults::CONNECT_TIMEOUT
      @additional_headers = opts[:additional_headers] || {}

      raise ChalkError, 'No Client ID provided, please set :client_id' if @client_id.nil?
      raise ChalkError, 'No Client Secret provided, please set :client_secret' if @client_secret.nil?
    end
  end
end
