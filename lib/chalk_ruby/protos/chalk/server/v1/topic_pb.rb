# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/server/v1/topic.proto

require 'google/protobuf'


descriptor_data = "\n\x1b\x63halk/server/v1/topic.proto\x12\x0f\x63halk.server.v1\"\'\n\x08SQSTopic\x12\x1b\n\tqueue_url\x18\x01 \x01(\tR\x08queueUrl\"G\n\x0bPubSubTopic\x12\x1d\n\nproject_id\x18\x01 \x01(\tR\tprojectId\x12\x19\n\x08topic_id\x18\x02 \x01(\tR\x07topicId\"\x8d\x01\n\x05Topic\x12\x38\n\tsqs_topic\x18\x01 \x01(\x0b\x32\x19.chalk.server.v1.SQSTopicH\x00R\x08sqsTopic\x12\x41\n\x0cpubsub_topic\x18\x02 \x01(\x0b\x32\x1c.chalk.server.v1.PubSubTopicH\x00R\x0bpubsubTopicB\x07\n\x05topicB\x93\x01\n\x13\x63om.chalk.server.v1B\nTopicProtoP\x01Z\x12server/v1;serverv1\xa2\x02\x03\x43SX\xaa\x02\x0f\x43halk.Server.V1\xca\x02\x0f\x43halk\\Server\\V1\xe2\x02\x1b\x43halk\\Server\\V1\\GPBMetadata\xea\x02\x11\x43halk::Server::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Server
    module V1
      SQSTopic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.SQSTopic").msgclass
      PubSubTopic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.PubSubTopic").msgclass
      Topic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.Topic").msgclass
    end
  end
end