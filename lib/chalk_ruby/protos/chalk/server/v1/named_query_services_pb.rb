# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: chalk/server/v1/named_query.proto for package 'Chalk.Server.V1'

require 'grpc'
require 'chalk_ruby/protos/chalk/server/v1/named_query_pb'

module Chalk
  module Server
    module V1
      module NamedQueryService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'chalk.server.v1.NamedQueryService'

          rpc :GetAllNamedQueries, ::Chalk::Server::V1::GetAllNamedQueriesRequest, ::Chalk::Server::V1::GetAllNamedQueriesResponse
          rpc :GetAllNamedQueriesActiveDeployment, ::Chalk::Server::V1::GetAllNamedQueriesActiveDeploymentRequest, ::Chalk::Server::V1::GetAllNamedQueriesActiveDeploymentResponse
          rpc :GetNamedQueryByName, ::Chalk::Server::V1::GetNamedQueryByNameRequest, ::Chalk::Server::V1::GetNamedQueryByNameResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end