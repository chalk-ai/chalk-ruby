# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: chalk/aggregate/v1/service.proto for package 'Chalk.Aggregate.V1'

require 'grpc'
require 'chalk_ruby/protos/chalk/aggregate/v1/service_pb'

module Chalk
  module Aggregate
    module V1
      module AggregateService
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'chalk.aggregate.v1.AggregateService'

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
          rpc :GetAggregateBackfillJobs, ::Chalk::Aggregate::V1::GetAggregateBackfillJobsRequest, ::Chalk::Aggregate::V1::GetAggregateBackfillJobsResponse
          rpc :GetAggregateBackfillJob, ::Chalk::Aggregate::V1::GetAggregateBackfillJobRequest, ::Chalk::Aggregate::V1::GetAggregateBackfillJobResponse
          rpc :GetCronAggregateBackfill, ::Chalk::Aggregate::V1::GetCronAggregateBackfillRequest, ::Chalk::Aggregate::V1::GetCronAggregateBackfillResponse
          rpc :GetActiveCronAggregateBackfills, ::Chalk::Aggregate::V1::GetActiveCronAggregateBackfillsRequest, ::Chalk::Aggregate::V1::GetActiveCronAggregateBackfillsResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
