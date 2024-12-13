require 'chalk_ruby/helpers'
require 'chalk_ruby/http/response'

module ChalkRuby
  module Http
    class HttpRequester
      include Helpers
      attr_accessor :adapter, :logger

      #
      # @param adapter [Net::Http] adapter used to make requests. Defaults to Net::Http
      # @param logger [Logger] logger used to log requests. Defaults to ChalkRuby::LoggerHelper
      #
      def initialize(adapter:, logger:)
        @adapter     = adapter
        @logger      = logger
        @connections = {}
      end

      # Sends a request
      #
      # @param host [String]
      # @param method [Symbol]
      # @param path [String]
      # @param body [String]
      # @param headers [Hash]
      # @param timeout [Integer]
      # @param connect_timeout [Integer]
      #
      # @return [Response]
      #
      def send_request(
        host:,
        method:,
        path:,
        body:,
        headers:,
        timeout:,
        connect_timeout:
      )
        normalized_host = host.is_a?(String) ? host : host[:api_server]
        connection                      = connection(normalized_host)
        connection.options.timeout      = timeout
        connection.options.open_timeout = connect_timeout

        if ENV['CHALK_DEBUG']
          @logger.info("Sending #{method.to_s.upcase!} request to #{path} with body #{body}")
        end

        response = connection.run_request(
          method,
          path,
          body,
          headers
        )

        if response.success?
          if ENV['CHALK_DEBUG']
            @logger.info("Request succeeded. Response status: #{response.status}, body: #{response.body}")
          end
          return Response.new(status: response.status, body: response.body, headers: response.headers)
        end

        if ENV['CHALK_DEBUG']
          @logger.info("Request failed. Response status: #{response.status}, error: #{response.body}")
        end
        Response.new(status: response.status, error: response.body, headers: response.headers)
      rescue Faraday::TimeoutError => e
        if ENV['CHALK_DEBUG']
          @logger.info("Request timed out. Error: #{e.message}")
        end
        Response.new(error: e.message, has_timed_out: true)
      rescue ::StandardError => e
        if ENV['CHALK_DEBUG']
          @logger.info("Request failed. Error: #{e.message}")
        end
        Response.new(error: e.message, network_failure: true)
      end

      # Retrieve the connection from the @connections
      #
      # @param host [String]
      #
      # @return [Faraday::Connection]
      #
      def connection(host)
        @connections[host] ||= Faraday.new(host) do |f|
          f.adapter @adapter.to_sym
        end
      end
    end
  end
end
