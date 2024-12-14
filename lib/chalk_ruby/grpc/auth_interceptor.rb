require 'grpc'
require 'chalk_ruby/protos/chalk/server/v1/auth_pb'
require 'chalk_ruby/protos/chalk/server/v1/auth_services_pb'

module ChalkRuby
  module Grpc
    class AuthInterceptor < GRPC::ClientInterceptor
      def initialize(auth_stub, client_id, client_secret, environment_id)
        @auth_stub = auth_stub
        @client_id = client_id
        @client_secret = client_secret
        @environment_id = environment_id
        @token = nil
      end

      def request_response(request:, call:, method:, metadata:)
        # If we haven't fetched a token yet or if you'd like to handle token expiration,
        # this is where you'd refresh it. For now, let's assume a long-lived token.
        if @token.nil?
          response = @auth_stub.get_token(
            Chalk::Server::V1::GetTokenRequest.new(
              client_id: @client_id,
              client_secret: @client_secret
            )
          )
          @token = response.access_token
        end


        # Add the token to the request's metadata
        metadata["authorization"] = "Bearer #{@token}"
        metadata["x-chalk-deployment-type"] = "engine-grpc"
        metadata["x-chalk-env-id"] = @environment_id

        # Proceed with the original call
        yield
      end

      # If you're using streaming calls, also consider overriding:
      # - client_streamer
      # - server_streamer
      # - bidi_streamer
      # following a similar pattern to insert metadata.
    end

    class ApiServerInterceptor < GRPC::ClientInterceptor
      def initialize()
      end

      def request_response(request:, call:, method:, metadata:)
        metadata["x-chalk-server"] = "go-api"
        yield
      end

      # If you're using streaming calls, also consider overriding:
      # - client_streamer
      # - server_streamer
      # - bidi_streamer
      # following a similar pattern to insert metadata.
    end
  end
end