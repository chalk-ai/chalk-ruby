# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/graph/v1/graph.proto

require 'google/protobuf'

require 'chalk_ruby/protos/chalk/arrow/v1/arrow_pb'
require 'chalk_ruby/protos/chalk/expression/v1/expression_pb'
require 'chalk_ruby/protos/chalk/graph/v1/sources_pb'
require 'chalk_ruby/protos/chalk/graph/v2/sources_pb'
require 'chalk_ruby/protos/chalk/lsp/v1/lsp_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1a\x63halk/graph/v1/graph.proto\x12\x0e\x63halk.graph.v1\x1a\x1a\x63halk/arrow/v1/arrow.proto\x1a$chalk/expression/v1/expression.proto\x1a\x1c\x63halk/graph/v1/sources.proto\x1a\x1c\x63halk/graph/v2/sources.proto\x1a\x16\x63halk/lsp/v1/lsp.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdc\x05\n\x05Graph\x12=\n\x0c\x66\x65\x61ture_sets\x18\x01 \x03(\x0b\x32\x1a.chalk.graph.v1.FeatureSetR\x0b\x66\x65\x61tureSets\x12\x36\n\tresolvers\x18\x02 \x03(\x0b\x32\x18.chalk.graph.v1.ResolverR\tresolvers\x12I\n\x10stream_resolvers\x18\x03 \x03(\x0b\x32\x1e.chalk.graph.v1.StreamResolverR\x0fstreamResolvers\x12\x43\n\x0esink_resolvers\x18\x04 \x03(\x0b\x32\x1c.chalk.graph.v1.SinkResolverR\rsinkResolvers\x12M\n\x10\x64\x61tabase_sources\x18\x05 \x03(\x0b\x32\x1e.chalk.graph.v1.DatabaseSourceB\x02\x18\x01R\x0f\x64\x61tabaseSources\x12G\n\x0estream_sources\x18\x06 \x03(\x0b\x32\x1c.chalk.graph.v1.StreamSourceB\x02\x18\x01R\rstreamSources\x12?\n\rnamed_queries\x18\x07 \x03(\x0b\x32\x1a.chalk.graph.v1.NamedQueryR\x0cnamedQueries\x12N\n\x13\x64\x61tabase_sources_v2\x18\x08 \x03(\x0b\x32\x1e.chalk.graph.v2.DatabaseSourceR\x11\x64\x61tabaseSourcesV2\x12Y\n\x16\x64\x61tabase_source_groups\x18\n \x03(\x0b\x32#.chalk.graph.v2.DatabaseSourceGroupR\x14\x64\x61tabaseSourceGroups\x12H\n\x11stream_sources_v2\x18\t \x03(\x0b\x32\x1c.chalk.graph.v2.StreamSourceR\x0fstreamSourcesV2\"\xfc\x06\n\nNamedQuery\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12(\n\rquery_version\x18\x02 \x01(\tH\x00R\x0cqueryVersion\x88\x01\x01\x12\x14\n\x05input\x18\x03 \x03(\tR\x05input\x12\x16\n\x06output\x18\x04 \x03(\tR\x06output\x12\x12\n\x04tags\x18\x05 \x03(\tR\x04tags\x12%\n\x0b\x64\x65scription\x18\x06 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x19\n\x05owner\x18\x07 \x01(\tH\x02R\x05owner\x88\x01\x01\x12\x38\n\x04meta\x18\x08 \x03(\x0b\x32$.chalk.graph.v1.NamedQuery.MetaEntryR\x04meta\x12G\n\tstaleness\x18\t \x03(\x0b\x32).chalk.graph.v1.NamedQuery.StalenessEntryR\tstaleness\x12W\n\x0fplanner_options\x18\n \x03(\x0b\x32..chalk.graph.v1.NamedQuery.PlannerOptionsEntryR\x0eplannerOptions\x12\x1b\n\tfile_name\x18\x0b \x01(\tR\x08\x66ileName\x12(\n\rdeployment_id\x18\x0c \x01(\tH\x03R\x0c\x64\x65ploymentId\x88\x01\x01\x12\\\n\x15source_file_reference\x18\r \x01(\x0b\x32#.chalk.graph.v1.SourceFileReferenceH\x04R\x13sourceFileReference\x88\x01\x01\x1a\x37\n\tMetaEntry\x12\x10\n\x03key\x18\x01 \x01(\tR\x03key\x12\x14\n\x05value\x18\x02 \x01(\tR\x05value:\x02\x38\x01\x1aW\n\x0eStalenessEntry\x12\x10\n\x03key\x18\x01 \x01(\tR\x03key\x12/\n\x05value\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationR\x05value:\x02\x38\x01\x1a\x41\n\x13PlannerOptionsEntry\x12\x10\n\x03key\x18\x01 \x01(\tR\x03key\x12\x14\n\x05value\x18\x02 \x01(\tR\x05value:\x02\x38\x01\x42\x10\n\x0e_query_versionB\x0e\n\x0c_descriptionB\x08\n\x06_ownerB\x10\n\x0e_deployment_idB\x18\n\x16_source_file_reference\"\xaa\x03\n\nFeatureSet\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x37\n\x08\x66\x65\x61tures\x18\x02 \x03(\x0b\x32\x1b.chalk.graph.v1.FeatureTypeR\x08\x66\x65\x61tures\x12O\n\x16max_staleness_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationR\x14maxStalenessDuration\x12!\n\x0cis_singleton\x18\x04 \x01(\x08R\x0bisSingleton\x12\x12\n\x04tags\x18\x05 \x03(\tR\x04tags\x12\x19\n\x05owner\x18\x06 \x01(\tH\x00R\x05owner\x88\x01\x01\x12\x15\n\x03\x64oc\x18\x07 \x01(\tH\x01R\x03\x64oc\x88\x01\x01\x12\x36\n\x15\x65tl_offline_to_online\x18\x08 \x01(\x08H\x02R\x12\x65tlOfflineToOnline\x88\x01\x01\x12\"\n\nclass_path\x18\t \x01(\tH\x03R\tclassPath\x88\x01\x01\x42\x08\n\x06_ownerB\x06\n\x04_docB\x18\n\x16_etl_offline_to_onlineB\r\n\x0b_class_path\"\xa2\x03\n\x0b\x46\x65\x61tureType\x12;\n\x06scalar\x18\x01 \x01(\x0b\x32!.chalk.graph.v1.ScalarFeatureTypeH\x00R\x06scalar\x12<\n\x07has_one\x18\x02 \x01(\x0b\x32!.chalk.graph.v1.HasOneFeatureTypeH\x00R\x06hasOne\x12?\n\x08has_many\x18\x03 \x01(\x0b\x32\".chalk.graph.v1.HasManyFeatureTypeH\x00R\x07hasMany\x12K\n\x0c\x66\x65\x61ture_time\x18\x04 \x01(\x0b\x32&.chalk.graph.v1.FeatureTimeFeatureTypeH\x00R\x0b\x66\x65\x61tureTime\x12\x41\n\x08windowed\x18\x05 \x01(\x0b\x32#.chalk.graph.v1.WindowedFeatureTypeH\x00R\x08windowed\x12?\n\x08group_by\x18\x06 \x01(\x0b\x32\".chalk.graph.v1.GroupByFeatureTypeH\x00R\x07groupByB\x06\n\x04type\"\xa9\x01\n\x10\x46\x65\x61tureReference\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12\x34\n\x04path\x18\x03 \x03(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x04path\x12-\n\x02\x64\x66\x18\x04 \x01(\x0b\x32\x1d.chalk.graph.v1.DataFrameTypeR\x02\x64\x66\"\xb3\x02\n\rDataFrameType\x12%\n\x0eroot_namespace\x18\x01 \x01(\tR\rrootNamespace\x12K\n\x10required_columns\x18\x02 \x03(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x0frequiredColumns\x12K\n\x10optional_columns\x18\x03 \x03(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x0foptionalColumns\x12<\n\x06\x66ilter\x18\x04 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x06\x66ilter\x12\x19\n\x05limit\x18\x05 \x01(\x04H\x00R\x05limit\x88\x01\x01\x42\x08\n\x06_limit\"\xd5\x05\n\x12GroupByFeatureType\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12\x1f\n\x0bis_nullable\x18\x03 \x01(\x08R\nisNullable\x12.\n\x10internal_version\x18\x04 \x01(\x04H\x00R\x0finternalVersion\x88\x01\x01\x12\x38\n\narrow_type\x18\x05 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\x12\x43\n\x0b\x61ggregation\x18\x06 \x01(\x0b\x32!.chalk.graph.v1.WindowAggregationR\x0b\x61ggregation\x12\x44\n\x10window_durations\x18\x07 \x03(\x0b\x32\x19.google.protobuf.DurationR\x0fwindowDurations\x12\x44\n\nexpression\x18\x08 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\nexpression\x12@\n\rdefault_value\x18\t \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\x0c\x64\x65\x66\x61ultValue\x12\x12\n\x04tags\x18\n \x03(\tR\x04tags\x12%\n\x0b\x64\x65scription\x18\x0b \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x19\n\x05owner\x18\x0c \x01(\tH\x02R\x05owner\x88\x01\x01\x12\x43\n\x0bvalidations\x18\r \x03(\x0b\x32!.chalk.graph.v1.FeatureValidationR\x0bvalidations\x12%\n\x0e\x61ttribute_name\x18\x0e \x01(\tR\rattributeNameB\x13\n\x11_internal_versionB\x0e\n\x0c_descriptionB\x08\n\x06_owner\"\xfa\t\n\x11ScalarFeatureType\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12)\n\x10is_autogenerated\x18\x03 \x01(\x08R\x0fisAutogenerated\x12\x1d\n\nno_display\x18\x04 \x01(\x08R\tnoDisplay\x12\x1d\n\nis_primary\x18\x05 \x01(\x08R\tisPrimary\x12\x1f\n\x0bis_nullable\x18\x06 \x01(\x08R\nisNullable\x12.\n\x10internal_version\x18\x07 \x01(\x04H\x00R\x0finternalVersion\x88\x01\x01\x12O\n\x16max_staleness_duration\x18\x08 \x01(\x0b\x32\x19.google.protobuf.DurationR\x14maxStalenessDuration\x12K\n\x14offline_ttl_duration\x18\n \x01(\x0b\x32\x19.google.protobuf.DurationR\x12offlineTtlDuration\x12\x38\n\narrow_type\x18\x0b \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\x12\x35\n\x07version\x18\x0c \x01(\x0b\x32\x1b.chalk.graph.v1.VersionInfoR\x07version\x12;\n\x0bwindow_info\x18\r \x01(\x0b\x32\x1a.chalk.graph.v1.WindowInfoR\nwindowInfo\x12@\n\rdefault_value\x18\x0e \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\x0c\x64\x65\x66\x61ultValue\x12\x12\n\x04tags\x18\x0f \x03(\tR\x04tags\x12%\n\x0b\x64\x65scription\x18\x10 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x19\n\x05owner\x18\x11 \x01(\tH\x02R\x05owner\x88\x01\x01\x12\x44\n\nexpression\x18\x12 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\nexpression\x12\x43\n\x0bvalidations\x18\x13 \x03(\x0b\x32!.chalk.graph.v1.FeatureValidationR\x0bvalidations\x12;\n\x08last_for\x18\x14 \x01(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x07lastFor\x12\x36\n\x15\x65tl_offline_to_online\x18\x15 \x01(\x08H\x03R\x12\x65tlOfflineToOnline\x88\x01\x01\x12:\n\x19is_distance_pseudofeature\x18\x16 \x01(\x08R\x17isDistancePseudofeature\x12%\n\x0e\x61ttribute_name\x18\x17 \x01(\tR\rattributeName\x12#\n\ris_deprecated\x18\x18 \x01(\x08R\x0cisDeprecated\x12\x44\n\x0e\x63\x61\x63he_strategy\x18\x19 \x01(\x0e\x32\x1d.chalk.graph.v1.CacheStrategyR\rcacheStrategyB\x13\n\x11_internal_versionB\x0e\n\x0c_descriptionB\x08\n\x06_ownerB\x18\n\x16_etl_offline_to_online\"\x8f\x03\n\x11HasOneFeatureType\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12+\n\x11\x66oreign_namespace\x18\x03 \x01(\tR\x10\x66oreignNamespace\x12\x38\n\x04join\x18\x04 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04join\x12\x1f\n\x0bis_nullable\x18\x05 \x01(\x08R\nisNullable\x12)\n\x10is_autogenerated\x18\x06 \x01(\x08R\x0fisAutogenerated\x12\x12\n\x04tags\x18\x07 \x03(\tR\x04tags\x12%\n\x0b\x64\x65scription\x18\x08 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x19\n\x05owner\x18\t \x01(\tH\x01R\x05owner\x88\x01\x01\x12%\n\x0e\x61ttribute_name\x18\n \x01(\tR\rattributeNameB\x0e\n\x0c_descriptionB\x08\n\x06_owner\"\xc0\x03\n\x12HasManyFeatureType\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12+\n\x11\x66oreign_namespace\x18\x03 \x01(\tR\x10\x66oreignNamespace\x12\x38\n\x04join\x18\x04 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04join\x12)\n\x10is_autogenerated\x18\x05 \x01(\x08R\x0fisAutogenerated\x12O\n\x16max_staleness_duration\x18\x06 \x01(\x0b\x32\x19.google.protobuf.DurationR\x14maxStalenessDuration\x12\x12\n\x04tags\x18\x07 \x03(\tR\x04tags\x12%\n\x0b\x64\x65scription\x18\x08 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x19\n\x05owner\x18\t \x01(\tH\x01R\x05owner\x88\x01\x01\x12%\n\x0e\x61ttribute_name\x18\n \x01(\tR\rattributeNameB\x0e\n\x0c_descriptionB\x08\n\x06_owner\"\x8c\x02\n\x16\x46\x65\x61tureTimeFeatureType\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12)\n\x10is_autogenerated\x18\x03 \x01(\x08R\x0fisAutogenerated\x12\x12\n\x04tags\x18\x04 \x03(\tR\x04tags\x12%\n\x0b\x64\x65scription\x18\x05 \x01(\tH\x00R\x0b\x64\x65scription\x88\x01\x01\x12\x19\n\x05owner\x18\x06 \x01(\tH\x01R\x05owner\x88\x01\x01\x12%\n\x0e\x61ttribute_name\x18\x07 \x01(\tR\rattributeNameB\x0e\n\x0c_descriptionB\x08\n\x06_owner\"\xdf\x01\n\x13WindowedFeatureType\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x1c\n\tnamespace\x18\x02 \x01(\tR\tnamespace\x12)\n\x10is_autogenerated\x18\x03 \x01(\x08R\x0fisAutogenerated\x12\x44\n\x10window_durations\x18\x04 \x03(\x0b\x32\x19.google.protobuf.DurationR\x0fwindowDurations\x12%\n\x0e\x61ttribute_name\x18\x05 \x01(\tR\rattributeName\"\xea\x07\n\x11WindowAggregation\x12\x1c\n\tnamespace\x18\x01 \x01(\tR\tnamespace\x12;\n\x08group_by\x18\x02 \x03(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x07groupBy\x12\x42\n\x0f\x62ucket_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationR\x0e\x62ucketDuration\x12 \n\x0b\x61ggregation\x18\x04 \x01(\tR\x0b\x61ggregation\x12H\n\x0c\x61ggregate_on\x18\x05 \x01(\x0b\x32 .chalk.graph.v1.FeatureReferenceH\x00R\x0b\x61ggregateOn\x88\x01\x01\x12\x38\n\narrow_type\x18\x06 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\x12>\n\x07\x66ilters\x18\x07 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07\x66ilters\x12\x30\n\x11\x62\x61\x63kfill_resolver\x18\x08 \x01(\tH\x01R\x10\x62\x61\x63kfillResolver\x88\x01\x01\x12\\\n\x1a\x62\x61\x63kfill_lookback_duration\x18\t \x01(\x0b\x32\x19.google.protobuf.DurationH\x02R\x18\x62\x61\x63kfillLookbackDuration\x88\x01\x01\x12O\n\x13\x62\x61\x63kfill_start_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x03R\x11\x62\x61\x63kfillStartTime\x88\x01\x01\x12\x34\n\x13\x63ontinuous_resolver\x18\x0b \x01(\tH\x04R\x12\x63ontinuousResolver\x88\x01\x01\x12\\\n\x1a\x63ontinuous_buffer_duration\x18\x0c \x01(\x0b\x32\x19.google.protobuf.DurationH\x05R\x18\x63ontinuousBufferDuration\x88\x01\x01\x12\x30\n\x11\x62\x61\x63kfill_schedule\x18\r \x01(\tH\x06R\x10\x62\x61\x63kfillSchedule\x88\x01\x01\x42\x0f\n\r_aggregate_onB\x14\n\x12_backfill_resolverB\x1d\n\x1b_backfill_lookback_durationB\x16\n\x14_backfill_start_timeB\x16\n\x14_continuous_resolverB\x1d\n\x1b_continuous_buffer_durationB\x14\n\x12_backfill_schedule\"\x9d\x01\n\nWindowInfo\x12\x35\n\x08\x64uration\x18\x01 \x01(\x0b\x32\x19.google.protobuf.DurationR\x08\x64uration\x12H\n\x0b\x61ggregation\x18\x02 \x01(\x0b\x32!.chalk.graph.v1.WindowAggregationH\x00R\x0b\x61ggregation\x88\x01\x01\x42\x0e\n\x0c_aggregation\"\x8c\x01\n\x0c\x46\x65\x61tureInput\x12:\n\x07\x66\x65\x61ture\x18\x01 \x01(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x07\x66\x65\x61ture\x12@\n\rdefault_value\x18\x02 \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\x0c\x64\x65\x66\x61ultValue\"\xbf\x01\n\rResolverInput\x12\x38\n\x07\x66\x65\x61ture\x18\x01 \x01(\x0b\x32\x1c.chalk.graph.v1.FeatureInputH\x00R\x07\x66\x65\x61ture\x12/\n\x02\x64\x66\x18\x02 \x01(\x0b\x32\x1d.chalk.graph.v1.DataFrameTypeH\x00R\x02\x64\x66\x12\x35\n\x05state\x18\x03 \x01(\x0b\x32\x1d.chalk.graph.v1.ResolverStateH\x00R\x05stateB\x0c\n\nannotation\"\x8d\x01\n\x0eResolverOutput\x12<\n\x07\x66\x65\x61ture\x18\x01 \x01(\x0b\x32 .chalk.graph.v1.FeatureReferenceH\x00R\x07\x66\x65\x61ture\x12/\n\x02\x64\x66\x18\x02 \x01(\x0b\x32\x1d.chalk.graph.v1.DataFrameTypeH\x00R\x02\x64\x66\x42\x0c\n\nannotation\"\x9b\t\n\x08Resolver\x12\x10\n\x03\x66qn\x18\x01 \x01(\tR\x03\x66qn\x12\x30\n\x04kind\x18\x02 \x01(\x0e\x32\x1c.chalk.graph.v1.ResolverKindR\x04kind\x12\x35\n\x06inputs\x18\x03 \x03(\x0b\x32\x1d.chalk.graph.v1.ResolverInputR\x06inputs\x12\x38\n\x07outputs\x18\x04 \x03(\x0b\x32\x1e.chalk.graph.v1.ResolverOutputR\x07outputs\x12!\n\x0cis_generator\x18\x05 \x01(\x08R\x0bisGenerator\x12N\n\x0c\x64\x61ta_sources\x18\x06 \x03(\x0b\x32\'.chalk.graph.v1.DatabaseSourceReferenceB\x02\x18\x01R\x0b\x64\x61taSources\x12&\n\x0cmachine_type\x18\x07 \x01(\tH\x00R\x0bmachineType\x88\x01\x01\x12\x12\n\x04tags\x18\x08 \x03(\tR\x04tags\x12\x19\n\x05owner\x18\t \x01(\tH\x01R\x05owner\x88\x01\x01\x12\x15\n\x03\x64oc\x18\n \x01(\tH\x02R\x03\x64oc\x88\x01\x01\x12\"\n\x0c\x65nvironments\x18\x0b \x03(\tR\x0c\x65nvironments\x12\x44\n\x10timeout_duration\x18\x0c \x01(\x0b\x32\x19.google.protobuf.DurationR\x0ftimeoutDuration\x12\x34\n\x08schedule\x18\r \x01(\x0b\x32\x18.chalk.graph.v1.ScheduleR\x08schedule\x12\x38\n\x04when\x18\x0e \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04when\x12J\n\x0b\x63ron_filter\x18\x0f \x01(\x0b\x32).chalk.graph.v1.CronFilterWithFeatureArgsR\ncronFilter\x12=\n\x08\x66unction\x18\x10 \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\x08\x66unction\x12\x41\n\rresource_hint\x18\x11 \x01(\x0e\x32\x1c.chalk.graph.v1.ResourceHintR\x0cresourceHint\x12\x1b\n\tis_static\x18\x12 \x01(\x08R\x08isStatic\x12\x1e\n\x08is_total\x18\x13 \x01(\x08H\x03R\x07isTotal\x88\x01\x01\x12\x1b\n\tunique_on\x18\x14 \x03(\tR\x08uniqueOn\x12%\n\x0epartitioned_by\x18\x15 \x03(\tR\rpartitionedBy\x12O\n\x0f\x64\x61ta_sources_v2\x18\x16 \x03(\x0b\x32\'.chalk.graph.v2.DatabaseSourceReferenceR\rdataSourcesV2\x12O\n\x10static_operation\x18\x17 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x0fstaticOperationB\x0f\n\r_machine_typeB\x08\n\x06_ownerB\x06\n\x04_docB\x0b\n\t_is_total\"\xc1\x07\n\x0cSinkResolver\x12\x10\n\x03\x66qn\x18\x01 \x01(\tR\x03\x66qn\x12\x35\n\x06inputs\x18\x02 \x03(\x0b\x32\x1d.chalk.graph.v1.ResolverInputR\x06inputs\x12$\n\x0b\x62uffer_size\x18\x03 \x01(\x04H\x01R\nbufferSize\x88\x01\x01\x12\x46\n\x11\x64\x65\x62ounce_duration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.DurationR\x10\x64\x65\x62ounceDuration\x12G\n\x12max_delay_duration\x18\x05 \x01(\x0b\x32\x19.google.protobuf.DurationR\x10maxDelayDuration\x12\x16\n\x06upsert\x18\x06 \x01(\x08R\x06upsert\x12P\n\rstream_source\x18\x07 \x01(\x0b\x32%.chalk.graph.v1.StreamSourceReferenceB\x02\x18\x01H\x00R\x0cstreamSource\x12V\n\x0f\x64\x61tabase_source\x18\x08 \x01(\x0b\x32\'.chalk.graph.v1.DatabaseSourceReferenceB\x02\x18\x01H\x00R\x0e\x64\x61tabaseSource\x12Q\n\x10stream_source_v2\x18\x0f \x01(\x0b\x32%.chalk.graph.v2.StreamSourceReferenceH\x00R\x0estreamSourceV2\x12W\n\x12\x64\x61tabase_source_v2\x18\x10 \x01(\x0b\x32\'.chalk.graph.v2.DatabaseSourceReferenceH\x00R\x10\x64\x61tabaseSourceV2\x12&\n\x0cmachine_type\x18\t \x01(\tH\x02R\x0bmachineType\x88\x01\x01\x12\x15\n\x03\x64oc\x18\n \x01(\tH\x03R\x03\x64oc\x88\x01\x01\x12\x19\n\x05owner\x18\x0b \x01(\tH\x04R\x05owner\x88\x01\x01\x12\"\n\x0c\x65nvironments\x18\x0c \x03(\tR\x0c\x65nvironments\x12\x44\n\x10timeout_duration\x18\r \x01(\x0b\x32\x19.google.protobuf.DurationR\x0ftimeoutDuration\x12=\n\x08\x66unction\x18\x0e \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\x08\x66unctionB\r\n\x0bintegrationB\x0e\n\x0c_buffer_sizeB\x0f\n\r_machine_typeB\x06\n\x04_docB\x08\n\x06_owner\"\xcd\x02\n\tParseInfo\x12H\n\x0eparse_function\x18\x01 \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\rparseFunction\x12T\n\x19parse_function_input_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\x16parseFunctionInputType\x12V\n\x1aparse_function_output_type\x18\x03 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\x17parseFunctionOutputType\x12H\n!is_parse_function_output_optional\x18\x04 \x01(\x08R\x1disParseFunctionOutputOptional\"\xff\x06\n\x0eStreamResolver\x12\x10\n\x03\x66qn\x18\x01 \x01(\tR\x03\x66qn\x12;\n\x06params\x18\x02 \x03(\x0b\x32#.chalk.graph.v1.StreamResolverParamR\x06params\x12\x38\n\x07outputs\x18\x03 \x03(\x0b\x32\x1e.chalk.graph.v1.ResolverOutputR\x07outputs\x12\x42\n\x0f\x65xplicit_schema\x18\x04 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\x0e\x65xplicitSchema\x12-\n\x04keys\x18\x05 \x03(\x0b\x32\x19.chalk.graph.v1.StreamKeyR\x04keys\x12\x41\n\x06source\x18\x06 \x01(\x0b\x32%.chalk.graph.v1.StreamSourceReferenceB\x02\x18\x01R\x06source\x12\x38\n\nparse_info\x18\x07 \x01(\x0b\x32\x19.chalk.graph.v1.ParseInfoR\tparseInfo\x12.\n\x04mode\x18\x08 \x01(\x0e\x32\x1a.chalk.graph.v1.WindowModeR\x04mode\x12\"\n\x0c\x65nvironments\x18\t \x03(\tR\x0c\x65nvironments\x12\x44\n\x10timeout_duration\x18\n \x01(\x0b\x32\x19.google.protobuf.DurationR\x0ftimeoutDuration\x12=\n\x18timestamp_attribute_name\x18\x0b \x01(\tH\x00R\x16timestampAttributeName\x88\x01\x01\x12\x19\n\x05owner\x18\x0c \x01(\tH\x01R\x05owner\x88\x01\x01\x12\x15\n\x03\x64oc\x18\r \x01(\tH\x02R\x03\x64oc\x88\x01\x01\x12&\n\x0cmachine_type\x18\x0e \x01(\tH\x03R\x0bmachineType\x88\x01\x01\x12=\n\x08\x66unction\x18\x0f \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\x08\x66unction\x12\x42\n\tsource_v2\x18\x10 \x01(\x0b\x32%.chalk.graph.v2.StreamSourceReferenceR\x08sourceV2B\x1b\n\x19_timestamp_attribute_nameB\x08\n\x06_ownerB\x06\n\x04_docB\x0f\n\r_machine_type\"\x80\x01\n\rResolverState\x12\x35\n\x07initial\x18\x01 \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\x07initial\x12\x38\n\narrow_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\"\xf7\x01\n\x13StreamResolverParam\x12\x46\n\x07message\x18\x01 \x01(\x0b\x32*.chalk.graph.v1.StreamResolverParamMessageH\x00R\x07message\x12Y\n\x0emessage_window\x18\x02 \x01(\x0b\x32\x30.chalk.graph.v1.StreamResolverParamMessageWindowH\x00R\rmessageWindow\x12\x35\n\x05state\x18\x03 \x01(\x0b\x32\x1d.chalk.graph.v1.ResolverStateH\x00R\x05stateB\x06\n\x04type\"p\n StreamResolverParamMessageWindow\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x38\n\narrow_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\"j\n\x1aStreamResolverParamMessage\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x38\n\narrow_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\"\xc3\x01\n\x11\x46unctionReference\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12\x16\n\x06module\x18\x02 \x01(\tR\x06module\x12\x1b\n\tfile_name\x18\x03 \x01(\tR\x08\x66ileName\x12/\n\x13\x66unction_definition\x18\x04 \x01(\tR\x12\x66unctionDefinition\x12$\n\x0bsource_line\x18\x05 \x01(\x05H\x00R\nsourceLine\x88\x01\x01\x42\x0e\n\x0c_source_line\"\x7f\n\x13SourceFileReference\x12)\n\x05range\x18\x01 \x01(\x0b\x32\x13.chalk.lsp.v1.RangeR\x05range\x12\x17\n\x04\x63ode\x18\x02 \x01(\tH\x00R\x04\x63ode\x88\x01\x01\x12\x1b\n\tfile_name\x18\x03 \x01(\tR\x08\x66ileNameB\x07\n\x05_code\"Y\n\tStreamKey\x12\x10\n\x03key\x18\x01 \x01(\tR\x03key\x12:\n\x07\x66\x65\x61ture\x18\x02 \x01(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x07\x66\x65\x61ture\"\x8c\x01\n\x19\x43ronFilterWithFeatureArgs\x12\x39\n\x06\x66ilter\x18\x01 \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\x06\x66ilter\x12\x34\n\x04\x61rgs\x18\x02 \x03(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x04\x61rgs\"\xe1\x01\n\x08Schedule\x12\x1a\n\x07\x63rontab\x18\x01 \x01(\tH\x00R\x07\x63rontab\x12\x37\n\x08\x64uration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationH\x00R\x08\x64uration\x12\x39\n\x06\x66ilter\x18\x03 \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\x06\x66ilter\x12\x39\n\x06sample\x18\x04 \x01(\x0b\x32!.chalk.graph.v1.FunctionReferenceR\x06sampleB\n\n\x08schedule\"\xa3\x01\n\x11\x46\x65\x61tureValidation\x12\x12\n\x03min\x18\x01 \x01(\x02H\x00R\x03min\x12\x12\n\x03max\x18\x02 \x01(\x02H\x00R\x03max\x12\x1f\n\nmin_length\x18\x03 \x01(\rH\x00R\tminLength\x12\x1f\n\nmax_length\x18\x04 \x01(\rH\x00R\tmaxLength\x12\x16\n\x06strict\x18\x05 \x01(\x08R\x06strictB\x0c\n\nvalidation\"A\n\x0bVersionInfo\x12\x18\n\x07\x64\x65\x66\x61ult\x18\x01 \x01(\rR\x07\x64\x65\x66\x61ult\x12\x18\n\x07maximum\x18\x02 \x01(\rR\x07maximum\"\x93\x01\n\x10StrictValidation\x12:\n\x07\x66\x65\x61ture\x18\x01 \x01(\x0b\x32 .chalk.graph.v1.FeatureReferenceR\x07\x66\x65\x61ture\x12\x43\n\x0bvalidations\x18\x02 \x03(\x0b\x32!.chalk.graph.v1.FeatureValidationR\x0bvalidations*\x9d\x02\n\rCacheStrategy\x12\x1e\n\x1a\x43\x41\x43HE_STRATEGY_UNSPECIFIED\x10\x00\x12\x16\n\x12\x43\x41\x43HE_STRATEGY_ALL\x10\x01\x12\x1b\n\x17\x43\x41\x43HE_STRATEGY_NO_NULLS\x10\x02\x12\x1e\n\x1a\x43\x41\x43HE_STRATEGY_EVICT_NULLS\x10\x03\x12\x1e\n\x1a\x43\x41\x43HE_STRATEGY_NO_DEFAULTS\x10\x04\x12!\n\x1d\x43\x41\x43HE_STRATEGY_EVICT_DEFAULTS\x10\x05\x12\'\n#CACHE_STRATEGY_NO_NULLS_OR_DEFAULTS\x10\x06\x12+\n\'CACHE_STRATEGY_EVICT_NULLS_AND_DEFAULTS\x10\x07*b\n\x0cResolverKind\x12\x1d\n\x19RESOLVER_KIND_UNSPECIFIED\x10\x00\x12\x18\n\x14RESOLVER_KIND_ONLINE\x10\x01\x12\x19\n\x15RESOLVER_KIND_OFFLINE\x10\x02*Z\n\x0cResourceHint\x12\x1d\n\x19RESOURCE_HINT_UNSPECIFIED\x10\x00\x12\x15\n\x11RESOURCE_HINT_CPU\x10\x01\x12\x14\n\x10RESOURCE_HINT_IO\x10\x02*t\n\nWindowMode\x12\x1b\n\x17WINDOW_MODE_UNSPECIFIED\x10\x00\x12\x1a\n\x16WINDOW_MODE_CONTINUOUS\x10\x01\x12\x18\n\x14WINDOW_MODE_TUMBLING\x10\x02\x12\x13\n\x0fWINDOW_MODE_CDC\x10\x03\x42z\n\x12\x63om.chalk.graph.v1B\nGraphProtoP\x01\xa2\x02\x03\x43GX\xaa\x02\x0e\x43halk.Graph.V1\xca\x02\x0e\x43halk\\Graph\\V1\xe2\x02\x1a\x43halk\\Graph\\V1\\GPBMetadata\xea\x02\x10\x43halk::Graph::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Graph
    module V1
      Graph = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.Graph").msgclass
      NamedQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.NamedQuery").msgclass
      FeatureSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FeatureSet").msgclass
      FeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FeatureType").msgclass
      FeatureReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FeatureReference").msgclass
      DataFrameType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.DataFrameType").msgclass
      GroupByFeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.GroupByFeatureType").msgclass
      ScalarFeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ScalarFeatureType").msgclass
      HasOneFeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.HasOneFeatureType").msgclass
      HasManyFeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.HasManyFeatureType").msgclass
      FeatureTimeFeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FeatureTimeFeatureType").msgclass
      WindowedFeatureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.WindowedFeatureType").msgclass
      WindowAggregation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.WindowAggregation").msgclass
      WindowInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.WindowInfo").msgclass
      FeatureInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FeatureInput").msgclass
      ResolverInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ResolverInput").msgclass
      ResolverOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ResolverOutput").msgclass
      Resolver = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.Resolver").msgclass
      SinkResolver = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.SinkResolver").msgclass
      ParseInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ParseInfo").msgclass
      StreamResolver = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.StreamResolver").msgclass
      ResolverState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ResolverState").msgclass
      StreamResolverParam = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.StreamResolverParam").msgclass
      StreamResolverParamMessageWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.StreamResolverParamMessageWindow").msgclass
      StreamResolverParamMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.StreamResolverParamMessage").msgclass
      FunctionReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FunctionReference").msgclass
      SourceFileReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.SourceFileReference").msgclass
      StreamKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.StreamKey").msgclass
      CronFilterWithFeatureArgs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.CronFilterWithFeatureArgs").msgclass
      Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.Schedule").msgclass
      FeatureValidation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.FeatureValidation").msgclass
      VersionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.VersionInfo").msgclass
      StrictValidation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.StrictValidation").msgclass
      CacheStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.CacheStrategy").enummodule
      ResolverKind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ResolverKind").enummodule
      ResourceHint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.ResourceHint").enummodule
      WindowMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.graph.v1.WindowMode").enummodule
    end
  end
end