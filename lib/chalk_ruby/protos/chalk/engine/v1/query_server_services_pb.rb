# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: chalk/engine/v1/query_server.proto for package 'Chalk.Engine.V1'

require 'grpc'
require 'chalk_ruby/protos/chalk/engine/v1/query_server_pb'

module Chalk
  module Engine
    module V1
      module QueryService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'chalk.engine.v1.QueryService'

          rpc :Ping, ::Chalk::Engine::V1::PingRequest, ::Chalk::Engine::V1::PingResponse
          rpc :OnlineQuery, ::Chalk::Common::V1::OnlineQueryRequest, ::Chalk::Common::V1::OnlineQueryResponse
          rpc :OnlineQueryBulk, ::Chalk::Common::V1::OnlineQueryBulkRequest, ::Chalk::Common::V1::OnlineQueryBulkResponse
          rpc :OnlineQueryMulti, ::Chalk::Common::V1::OnlineQueryMultiRequest, ::Chalk::Common::V1::OnlineQueryMultiResponse
          rpc :UploadFeaturesBulk, ::Chalk::Common::V1::UploadFeaturesBulkRequest, ::Chalk::Common::V1::UploadFeaturesBulkResponse
          rpc :UploadFeatures, ::Chalk::Common::V1::UploadFeaturesRequest, ::Chalk::Common::V1::UploadFeaturesResponse
          # PlanAggregateBackfill determines the estimated resources needed to backfill
          # an aggregate.
          #
          # This method is a duplicate of the PlanAggregateBackfill method
          # in the query_server.proto file. We should remove the query_server.proto method
          # and move that request to this service instead.
          # buf:lint:ignore RPC_REQUEST_RESPONSE_UNIQUE
          rpc :PlanAggregateBackfill, ::Chalk::Aggregate::V1::PlanAggregateBackfillRequest, ::Chalk::Aggregate::V1::PlanAggregateBackfillResponse
          # This method is a duplicate of the PlanAggregateBackfill method
          # in the query_server.proto file. We should remove the query_server.proto method
          # and move that request to this service instead.
          # buf:lint:ignore RPC_REQUEST_RESPONSE_UNIQUE
          rpc :GetAggregates, ::Chalk::Aggregate::V1::GetAggregatesRequest, ::Chalk::Aggregate::V1::GetAggregatesResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
