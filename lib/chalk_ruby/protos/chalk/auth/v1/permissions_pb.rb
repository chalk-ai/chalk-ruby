# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/auth/v1/permissions.proto

require 'google/protobuf'

require 'chalk/utils/v1/encoding_pb'
require 'google/protobuf/descriptor_pb'


descriptor_data = "\n\x1f\x63halk/auth/v1/permissions.proto\x12\rchalk.auth.v1\x1a\x1d\x63halk/utils/v1/encoding.proto\x1a google/protobuf/descriptor.proto*\xc7\n\n\nPermission\x12\x1a\n\x16PERMISSION_UNSPECIFIED\x10\x00\x12\'\n#PERMISSION_INSECURE_UNAUTHENTICATED\x10\x01\x12\x1c\n\x18PERMISSION_AUTHENTICATED\x10\x02\x12\x1b\n\x17PERMISSION_QUERY_ONLINE\x10\x03\x12\x1c\n\x18PERMISSION_QUERY_OFFLINE\x10\x04\x12 \n\x1cPERMISSION_MONITORING_CREATE\x10\x05\x12\x1e\n\x1aPERMISSION_MONITORING_READ\x10\x06\x12\x17\n\x13PERMISSION_TEAM_ADD\x10\x07\x12\x1a\n\x16PERMISSION_TEAM_DELETE\x10\x08\x12\x18\n\x14PERMISSION_TEAM_LIST\x10\t\x12\x19\n\x15PERMISSION_TEAM_ADMIN\x10\n\x12\x1a\n\x16PERMISSION_DEPLOY_READ\x10\x0b\x12\x1c\n\x18PERMISSION_DEPLOY_CREATE\x10\x0c\x12\x1d\n\x19PERMISSION_DEPLOY_PREVIEW\x10\r\x12\x1e\n\x1aPERMISSION_DEPLOY_REDEPLOY\x10\x0e\x12\x18\n\x14PERMISSION_LOGS_LIST\x10\x0f\x12\x18\n\x14PERMISSION_CRON_READ\x10\x10\x12\x1a\n\x16PERMISSION_CRON_CREATE\x10\x11\x12\x1c\n\x18PERMISSION_SECRETS_WRITE\x10\x12\x12\x1e\n\x1aPERMISSION_SECRETS_DECRYPT\x10\x13\x12\x1b\n\x17PERMISSION_SECRETS_LIST\x10\x14\x12\x1b\n\x17PERMISSION_TOKENS_WRITE\x10\x15\x12\x1a\n\x16PERMISSION_TOKENS_LIST\x10\x16\x12\x1b\n\x17PERMISSION_MIGRATE_READ\x10\x17\x12\x1b\n\x17PERMISSION_MIGRATE_PLAN\x10\x18\x12\x1e\n\x1aPERMISSION_MIGRATE_EXECUTE\x10\x19\x12\x1d\n\x19PERMISSION_PROJECT_CREATE\x10\x1a\x12\x1a\n\x16PERMISSION_CHALK_ADMIN\x10\x1b\x1a\xfc\x03\xe2\xa1\'\xf7\x03\n\x1c\x08\x01\x12\x18insecure_unauthenticated\n\x11\x08\x02\x12\rauthenticated\n\x10\x08\x03\x12\x0cquery.online\n\x11\x08\x04\x12\rquery.offline\n\x15\x08\x05\x12\x11monitoring.create\n\x13\x08\x06\x12\x0fmonitoring.read\n\x0c\x08\x07\x12\x08team.add\n\x0f\x08\x08\x12\x0bteam.delete\n\r\x08\t\x12\tteam.list\n\x0e\x08\n\x12\nteam.admin\n\x0f\x08\x0b\x12\x0b\x64\x65ploy.read\n\x11\x08\x0c\x12\rdeploy.create\n\x12\x08\r\x12\x0e\x64\x65ploy.preview\n\x13\x08\x0e\x12\x0f\x64\x65ploy.redeploy\n\r\x08\x0f\x12\tlogs.list\n\r\x08\x10\x12\tcron.read\n\x0f\x08\x11\x12\x0b\x63ron.create\n\x11\x08\x12\x12\rsecrets.write\n\x13\x08\x13\x12\x0fsecrets.decrypt\n\x10\x08\x14\x12\x0csecrets.list\n\x10\x08\x15\x12\x0ctokens.write\n\x0f\x08\x16\x12\x0btokens.list\n\x10\x08\x17\x12\x0cmigrate.read\n\x10\x08\x18\x12\x0cmigrate.plan\n\x13\x08\x19\x12\x0fmigrate.execute\n\x12\x08\x1a\x12\x0eproject.create\n\x0f\x08\x1b\x12\x0b\x63halk.admin:Z\n\npermission\x12\x1e.google.protobuf.MethodOptions\x18\xd0\x0f \x01(\x0e\x32\x19.chalk.auth.v1.PermissionR\npermissionB\x85\x01\n\x11\x63om.chalk.auth.v1B\x10PermissionsProtoP\x01Z\x0e\x61uth/v1;authv1\xa2\x02\x03\x43\x41X\xaa\x02\rChalk.Auth.V1\xca\x02\rChalk\\Auth\\V1\xe2\x02\x19\x43halk\\Auth\\V1\\GPBMetadata\xea\x02\tChalkRubyb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module ChalkRuby
  Permission = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.auth.v1.Permission").enummodule
end
