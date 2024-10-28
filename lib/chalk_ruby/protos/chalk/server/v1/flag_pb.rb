# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/server/v1/flag.proto

require 'google/protobuf'

require 'chalk/auth/v1/permissions_pb'


descriptor_data = "\n\x1a\x63halk/server/v1/flag.proto\x12\x0f\x63halk.server.v1\x1a\x1f\x63halk/auth/v1/permissions.proto\"<\n\x10\x46\x65\x61tureFlagValue\x12\x12\n\x04\x66lag\x18\x01 \x01(\tR\x04\x66lag\x12\x14\n\x05value\x18\x02 \x01(\x08R\x05value\"\x18\n\x16GetFeatureFlagsRequest\"R\n\x17GetFeatureFlagsResponse\x12\x37\n\x05\x66lags\x18\x01 \x03(\x0b\x32!.chalk.server.v1.FeatureFlagValueR\x05\x66lags\"s\n\x15SetFeatureFlagRequest\x12\x12\n\x04\x66lag\x18\x01 \x01(\tR\x04\x66lag\x12\x14\n\x05value\x18\x02 \x01(\x08R\x05value\x12\x30\n\x05scope\x18\x03 \x01(\x0e\x32\x1a.chalk.server.v1.FlagScopeR\x05scope\"\x18\n\x16SetFeatureFlagResponse*X\n\tFlagScope\x12\x1a\n\x16\x46LAG_SCOPE_UNSPECIFIED\x10\x00\x12\x13\n\x0f\x46LAG_SCOPE_TEAM\x10\x01\x12\x1a\n\x16\x46LAG_SCOPE_ENVIRONMENT\x10\x02\x32\xed\x01\n\x12\x46\x65\x61tureFlagService\x12l\n\x0fGetFeatureFlags\x12\'.chalk.server.v1.GetFeatureFlagsRequest\x1a(.chalk.server.v1.GetFeatureFlagsResponse\"\x06\x90\x02\x01\x80}\x02\x12i\n\x0eSetFeatureFlag\x12&.chalk.server.v1.SetFeatureFlagRequest\x1a\'.chalk.server.v1.SetFeatureFlagResponse\"\x06\x90\x02\x02\x80}\x1b\x42\x8a\x01\n\x13\x63om.chalk.server.v1B\tFlagProtoP\x01Z\x12server/v1;serverv1\xa2\x02\x03\x43SX\xaa\x02\x0f\x43halk.Server.V1\xca\x02\x0f\x43halk\\Server\\V1\xe2\x02\x1b\x43halk\\Server\\V1\\GPBMetadata\xea\x02\tChalkRubyb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module ChalkRuby
  FeatureFlagValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.FeatureFlagValue").msgclass
  GetFeatureFlagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.GetFeatureFlagsRequest").msgclass
  GetFeatureFlagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.GetFeatureFlagsResponse").msgclass
  SetFeatureFlagRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.SetFeatureFlagRequest").msgclass
  SetFeatureFlagResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.SetFeatureFlagResponse").msgclass
  FlagScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.FlagScope").enummodule
end
