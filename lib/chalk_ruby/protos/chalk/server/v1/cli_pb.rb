# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/server/v1/cli.proto

require 'google/protobuf'

require 'chalk/auth/v1/permissions_pb'


descriptor_data = "\n\x19\x63halk/server/v1/cli.proto\x12\x0f\x63halk.server.v1\x1a\x1f\x63halk/auth/v1/permissions.proto\"\x9e\x01\n\x1b\x43ommandLineInterfaceVersion\x12\x18\n\x07version\x18\x01 \x01(\tR\x07version\x12!\n\x0c\x64ownload_url\x18\x02 \x01(\tR\x0b\x64ownloadUrl\x12\x0e\n\x02os\x18\x03 \x01(\tR\x02os\x12\x12\n\x04\x61rch\x18\x04 \x01(\tR\x04\x61rch\x12\x1e\n\ngeneration\x18\x05 \x01(\x03R\ngeneration\"R\n\x12GetVersionsRequest\x12\x13\n\x02os\x18\x01 \x01(\tH\x00R\x02os\x88\x01\x01\x12\x17\n\x04\x61rch\x18\x02 \x01(\tH\x01R\x04\x61rch\x88\x01\x01\x42\x05\n\x03_osB\x07\n\x05_arch\"\x87\x02\n\x13GetVersionsResponse\x12H\n\x08versions\x18\x01 \x03(\x0b\x32,.chalk.server.v1.CommandLineInterfaceVersionR\x08versions\x12\x44\n\x06latest\x18\x02 \x01(\x0b\x32,.chalk.server.v1.CommandLineInterfaceVersionR\x06latest\x12\x46\n\x07nightly\x18\x03 \x01(\x0b\x32,.chalk.server.v1.CommandLineInterfaceVersionR\x07nightly\x12\x18\n\x07minimum\x18\x04 \x01(\tR\x07minimum2\x7f\n\x1b\x43ommandLineInterfaceService\x12`\n\x0bGetVersions\x12#.chalk.server.v1.GetVersionsRequest\x1a$.chalk.server.v1.GetVersionsResponse\"\x06\x90\x02\x01\x80}\x01\x42\x89\x01\n\x13\x63om.chalk.server.v1B\x08\x43liProtoP\x01Z\x12server/v1;serverv1\xa2\x02\x03\x43SX\xaa\x02\x0f\x43halk.Server.V1\xca\x02\x0f\x43halk\\Server\\V1\xe2\x02\x1b\x43halk\\Server\\V1\\GPBMetadata\xea\x02\tChalkRubyb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module ChalkRuby
  CommandLineInterfaceVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.CommandLineInterfaceVersion").msgclass
  GetVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.GetVersionsRequest").msgclass
  GetVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.GetVersionsResponse").msgclass
end
