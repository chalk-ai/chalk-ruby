# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/engine/v1/plan_server.proto

require 'google/protobuf'

require 'chalk_ruby/protos/chalk/common/v1/online_query_pb'
require 'chalk_ruby/protos/chalk/engine/v1/plan_pb'


descriptor_data = "\n!chalk/engine/v1/plan_server.proto\x12\x0f\x63halk.engine.v1\x1a\"chalk/common/v1/online_query.proto\x1a\x1a\x63halk/engine/v1/plan.proto\"g\n\x0eGetPlanRequest\x12U\n\x14online_query_request\x18\x01 \x01(\x0b\x32#.chalk.common.v1.OnlineQueryRequestR\x12onlineQueryRequest\"<\n\x0fGetPlanResponse\x12)\n\x04plan\x18\x01 \x01(\x0b\x32\x15.chalk.engine.v1.PlanR\x04plan\"l\n\x13\x45xecuteQueryRequest\x12U\n\x14online_query_request\x18\x01 \x01(\x0b\x32#.chalk.common.v1.OnlineQueryRequestR\x12onlineQueryRequest\"p\n\x14\x45xecuteQueryResponse\x12X\n\x15online_query_response\x18\x01 \x01(\x0b\x32$.chalk.common.v1.OnlineQueryResponseR\x13onlineQueryResponse2\xbc\x01\n\x0bPlanService\x12N\n\x07GetPlan\x12\x1f.chalk.engine.v1.GetPlanRequest\x1a .chalk.engine.v1.GetPlanResponse\"\x00\x12]\n\x0c\x45xecuteQuery\x12$.chalk.engine.v1.ExecuteQueryRequest\x1a%.chalk.engine.v1.ExecuteQueryResponse\"\x00\x42\x84\x01\n\x13\x63om.chalk.engine.v1B\x0fPlanServerProtoP\x01\xa2\x02\x03\x43\x45X\xaa\x02\x0f\x43halk.Engine.V1\xca\x02\x0f\x43halk\\Engine\\V1\xe2\x02\x1b\x43halk\\Engine\\V1\\GPBMetadata\xea\x02\x11\x43halk::Engine::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Engine
    module V1
      GetPlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v1.GetPlanRequest").msgclass
      GetPlanResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v1.GetPlanResponse").msgclass
      ExecuteQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v1.ExecuteQueryRequest").msgclass
      ExecuteQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v1.ExecuteQueryResponse").msgclass
    end
  end
end