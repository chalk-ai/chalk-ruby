# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/engine/v2/offline_store_service.proto

require 'google/protobuf'

require 'chalk_ruby/protos/chalk/auth/v1/permissions_pb'
require 'chalk_ruby/protos/chalk/engine/v2/feature_values_pb'
require 'chalk_ruby/protos/chalk/engine/v2/feature_values_chart_pb'
require 'chalk_ruby/protos/chalk/engine/v2/query_log_pb'
require 'chalk_ruby/protos/chalk/engine/v2/query_values_pb'


descriptor_data = "\n+chalk/engine/v2/offline_store_service.proto\x12\x0f\x63halk.engine.v2\x1a\x1f\x63halk/auth/v1/permissions.proto\x1a$chalk/engine/v2/feature_values.proto\x1a*chalk/engine/v2/feature_values_chart.proto\x1a\x1f\x63halk/engine/v2/query_log.proto\x1a\"chalk/engine/v2/query_values.proto\"\x1a\n\x18OfflineStoreServiceDummy2\xfb\x03\n\x13OfflineStoreService\x12r\n\x12GetQueryLogEntries\x12*.chalk.engine.v2.GetQueryLogEntriesRequest\x1a+.chalk.engine.v2.GetQueryLogEntriesResponse\"\x03\x80}\x04\x12\x66\n\x0eGetQueryValues\x12&.chalk.engine.v2.GetQueryValuesRequest\x1a\'.chalk.engine.v2.GetQueryValuesResponse\"\x03\x80}\x04\x12\x99\x01\n\x1fGetFeatureValuesTimeSeriesChart\x12\x37.chalk.engine.v2.GetFeatureValuesTimeSeriesChartRequest\x1a\x38.chalk.engine.v2.GetFeatureValuesTimeSeriesChartResponse\"\x03\x80}\x04\x12l\n\x10GetFeatureValues\x12(.chalk.engine.v2.GetFeatureValuesRequest\x1a).chalk.engine.v2.GetFeatureValuesResponse\"\x03\x80}\x04\x42\x8d\x01\n\x13\x63om.chalk.engine.v2B\x18OfflineStoreServiceProtoP\x01\xa2\x02\x03\x43\x45X\xaa\x02\x0f\x43halk.Engine.V2\xca\x02\x0f\x43halk\\Engine\\V2\xe2\x02\x1b\x43halk\\Engine\\V2\\GPBMetadata\xea\x02\x11\x43halk::Engine::V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Engine
    module V2
      OfflineStoreServiceDummy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v2.OfflineStoreServiceDummy").msgclass
    end
  end
end