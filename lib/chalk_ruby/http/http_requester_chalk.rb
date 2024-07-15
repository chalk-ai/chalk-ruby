require 'faraday'
# Default adapter needs to be required to be registered
require 'faraday/net_http_persistent' unless Faraday::VERSION < '1'
require 'chalk_ruby/error'

module ChalkRuby
  module Http
    class HttpRequesterChalk
      include Helpers

      # @param requester [ChalkRuby::Http::HttpRequester] requester used for sending requests.
      #
      def initialize(requester:)
        @http_requester = requester
      end

      def send_request(method:, host:, path:, timeout:, connect_timeout:, headers:, body:)
        response = @http_requester.send_request(
          host: "https://httpstat.us",
          method: method,
          path: "/503",
          body: body && to_json(body: body),
          headers: headers,
          timeout: timeout,
          connect_timeout: connect_timeout
        )

        if response.has_timed_out
          puts response.inspect
          raise ChalkHttpError.new(code: Defaults::ERROR_TIMED_OUT, message: 'Request timed out')
        end

        if response.network_failure
          raise ChalkHttpError.new(code: 502, message: 'Network failure')
        end

        unless success?(http_response_code: response.status)
          begin
            decoded_error = json_to_hash(json: response.error, symbolize_keys: true)
            code = get_option(hash: decoded_error, key: 'status')
            message = get_option(hash: decoded_error, key: 'description')
            raise ChalkHttpError.new(
              code: code,
              message: message
            )
          rescue MultiJson::ParseError
            raise ChalkHttpError.new(
              code: response.status,
              message: response.error
            )
          end
        end
        json_to_hash(json: response.body, symbolize_keys: true)
      end

      private

      def success?(http_response_code:)
        !http_response_code.nil? && (http_response_code.to_i / 100).floor == 2
      end
    end
  end
end
