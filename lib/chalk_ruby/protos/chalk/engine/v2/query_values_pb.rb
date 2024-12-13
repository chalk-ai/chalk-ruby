# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/engine/v2/query_values.proto

require 'google/protobuf'

require 'chalk_ruby/protos/chalk/common/v1/query_log_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\"chalk/engine/v2/query_values.proto\x12\x0f\x63halk.engine.v2\x1a\x1f\x63halk/common/v1/query_log.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"?\n\x1aOperationIdTableIdentifier\x12!\n\x0coperation_id\x18\x01 \x01(\tR\x0boperationId\"u\n\x18TableNameTableIdentifier\x12\x1d\n\ntable_name\x18\x01 \x01(\tR\ttableName\x12:\n\x07\x66ilters\x18\x02 \x01(\x0b\x32 .chalk.common.v1.QueryLogFiltersR\x07\x66ilters\"\xad\x01\n\x17GetQueryValuesPageToken\x12J\n\x13query_timestamp_hwm\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampR\x11queryTimestampHwm\x12(\n\x10operation_id_hwm\x18\x02 \x01(\tR\x0eoperationIdHwm\x12\x1c\n\nrow_id_hwm\x18\x03 \x01(\x03R\x08rowIdHwm\"\xd6\x04\n\x15GetQueryValuesRequest\x12\x65\n\x17operation_id_identifier\x18\x01 \x01(\x0b\x32+.chalk.engine.v2.OperationIdTableIdentifierH\x00R\x15operationIdIdentifier\x12_\n\x15table_name_identifier\x18\x02 \x01(\x0b\x32).chalk.engine.v2.TableNameTableIdentifierH\x00R\x13tableNameIdentifier\x12l\n%query_timestamp_lower_bound_inclusive\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampR!queryTimestampLowerBoundInclusive\x12q\n%query_timestamp_upper_bound_exclusive\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x01R!queryTimestampUpperBoundExclusive\x88\x01\x01\x12\x1a\n\x08\x66\x65\x61tures\x18\x05 \x03(\tR\x08\x66\x65\x61tures\x12\x1b\n\tpage_size\x18\x07 \x01(\x05R\x08pageSize\x12\x1d\n\npage_token\x18\x08 \x01(\tR\tpageTokenB\x12\n\x10table_identifierB(\n&_query_timestamp_upper_bound_exclusive\"g\n\x16GetQueryValuesResponse\x12&\n\x0fnext_page_token\x18\x01 \x01(\tR\rnextPageToken\x12\x1a\n\x07parquet\x18\x02 \x01(\x0cH\x00R\x07parquetB\t\n\x07payloadB\x85\x01\n\x13\x63om.chalk.engine.v2B\x10QueryValuesProtoP\x01\xa2\x02\x03\x43\x45X\xaa\x02\x0f\x43halk.Engine.V2\xca\x02\x0f\x43halk\\Engine\\V2\xe2\x02\x1b\x43halk\\Engine\\V2\\GPBMetadata\xea\x02\x11\x43halk::Engine::V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Engine
    module V2
      OperationIdTableIdentifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v2.OperationIdTableIdentifier").msgclass
      TableNameTableIdentifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v2.TableNameTableIdentifier").msgclass
      GetQueryValuesPageToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v2.GetQueryValuesPageToken").msgclass
      GetQueryValuesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v2.GetQueryValuesRequest").msgclass
      GetQueryValuesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.engine.v2.GetQueryValuesResponse").msgclass
    end
  end
end