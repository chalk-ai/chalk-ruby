# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/common/v1/dataset_response.proto

require 'google/protobuf'

require 'chalk_ruby/protos/chalk/common/v1/chalk_error_pb'
require 'chalk_ruby/protos/chalk/common/v1/query_status_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&chalk/common/v1/dataset_response.proto\x12\x0f\x63halk.common.v1\x1a!chalk/common/v1/chalk_error.proto\x1a\"chalk/common/v1/query_status.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xef\x01\n\x13\x44\x61tasetSampleFilter\x12@\n\x0blower_bound\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00R\nlowerBound\x88\x01\x01\x12@\n\x0bupper_bound\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x01R\nupperBound\x88\x01\x01\x12$\n\x0bmax_samples\x18\x03 \x01(\x05H\x02R\nmaxSamples\x88\x01\x01\x42\x0e\n\x0c_lower_boundB\x0e\n\x0c_upper_boundB\x0e\n\x0c_max_samples\"\xa5\x01\n\rDatasetFilter\x12K\n\x0esample_filters\x18\x01 \x01(\x0b\x32$.chalk.common.v1.DatasetSampleFilterR\rsampleFilters\x12\x30\n\x12max_cache_age_secs\x18\x02 \x01(\x02H\x00R\x0fmaxCacheAgeSecs\x88\x01\x01\x42\x15\n\x13_max_cache_age_secs\"\xcf\x07\n\x17\x44\x61tasetRevisionResponse\x12&\n\x0c\x64\x61taset_name\x18\x01 \x01(\tH\x00R\x0b\x64\x61tasetName\x88\x01\x01\x12\"\n\ndataset_id\x18\x02 \x01(\tH\x01R\tdatasetId\x88\x01\x01\x12*\n\x0e\x65nvironment_id\x18\x03 \x01(\tH\x02R\renvironmentId\x88\x01\x01\x12$\n\x0brevision_id\x18\x04 \x01(\tH\x03R\nrevisionId\x88\x01\x01\x12\x1d\n\ncreator_id\x18\x05 \x01(\tR\tcreatorId\x12\x18\n\x07outputs\x18\x06 \x03(\tR\x07outputs\x12\"\n\ngivens_uri\x18\x07 \x01(\tH\x04R\tgivensUri\x88\x01\x01\x12\x34\n\x06status\x18\x08 \x01(\x0e\x32\x1c.chalk.common.v1.QueryStatusR\x06status\x12\x38\n\x07\x66ilters\x18\t \x01(\x0b\x32\x1e.chalk.common.v1.DatasetFilterR\x07\x66ilters\x12%\n\x0enum_partitions\x18\n \x01(\x05R\rnumPartitions\x12 \n\tnum_bytes\x18\x0b \x01(\x05H\x05R\x08numBytes\x88\x01\x01\x12\x1f\n\x0boutput_uris\x18\x0c \x01(\tR\noutputUris\x12%\n\x0eoutput_version\x18\r \x01(\x05R\routputVersion\x12\x1b\n\x06\x62ranch\x18\x0e \x01(\tH\x06R\x06\x62ranch\x88\x01\x01\x12(\n\rdashboard_url\x18\x0f \x01(\tH\x07R\x0c\x64\x61shboardUrl\x88\x01\x01\x12>\n\ncreated_at\x18\x65 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x08R\tcreatedAt\x88\x01\x01\x12>\n\nstarted_at\x18\x66 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\tR\tstartedAt\x88\x01\x01\x12\x44\n\rterminated_at\x18g \x01(\x0b\x32\x1a.google.protobuf.TimestampH\nR\x0cterminatedAt\x88\x01\x01\x42\x0f\n\r_dataset_nameB\r\n\x0b_dataset_idB\x11\n\x0f_environment_idB\x0e\n\x0c_revision_idB\r\n\x0b_givens_uriB\x0c\n\n_num_bytesB\t\n\x07_branchB\x10\n\x0e_dashboard_urlB\r\n\x0b_created_atB\r\n\x0b_started_atB\x10\n\x0e_terminated_at\"\xb2\x02\n\x0f\x44\x61tasetResponse\x12\x1f\n\x0bis_finished\x18\x01 \x01(\x08R\nisFinished\x12\x18\n\x07version\x18\x02 \x01(\x05R\x07version\x12%\n\x0e\x65nvironment_id\x18\x03 \x01(\tR\renvironmentId\x12\x1d\n\ndataset_id\x18\x04 \x01(\tR\tdatasetId\x12!\n\x0c\x64\x61taset_name\x18\x05 \x01(\tR\x0b\x64\x61tasetName\x12\x33\n\x06\x65rrors\x18\x65 \x03(\x0b\x32\x1b.chalk.common.v1.ChalkErrorR\x06\x65rrors\x12\x46\n\trevisions\x18\x66 \x03(\x0b\x32(.chalk.common.v1.DatasetRevisionResponseR\trevisionsB\x89\x01\n\x13\x63om.chalk.common.v1B\x14\x44\x61tasetResponseProtoP\x01\xa2\x02\x03\x43\x43X\xaa\x02\x0f\x43halk.Common.V1\xca\x02\x0f\x43halk\\Common\\V1\xe2\x02\x1b\x43halk\\Common\\V1\\GPBMetadata\xea\x02\x11\x43halk::Common::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Common
    module V1
      DatasetSampleFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.common.v1.DatasetSampleFilter").msgclass
      DatasetFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.common.v1.DatasetFilter").msgclass
      DatasetRevisionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.common.v1.DatasetRevisionResponse").msgclass
      DatasetResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.common.v1.DatasetResponse").msgclass
    end
  end
end
