# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/server/v1/chart.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1b\x63halk/server/v1/chart.proto\x12\x0f\x63halk.server.v1\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"L\n\x06Series\x12\x16\n\x06points\x18\x01 \x03(\x01R\x06points\x12\x14\n\x05label\x18\x02 \x01(\tR\x05label\x12\x14\n\x05units\x18\x03 \x01(\tR\x05units\"t\n\x05\x43hart\x12\x14\n\x05title\x18\x01 \x01(\tR\x05title\x12/\n\x06series\x18\x02 \x03(\x0b\x32\x17.chalk.server.v1.SeriesR\x06series\x12$\n\x0ex_timestamp_ms\x18\x04 \x03(\x03R\x0cxTimestampMs\"0\n\x05Point\x12\x19\n\x05value\x18\x01 \x01(\x03H\x00R\x05value\x88\x01\x01:\x02\x18\x01\x42\x08\n\x06_value\"l\n\nTimeSeries\x12.\n\x06points\x18\x01 \x03(\x0b\x32\x16.chalk.server.v1.PointR\x06points\x12\x14\n\x05label\x18\x02 \x01(\tR\x05label\x12\x14\n\x05units\x18\x03 \x01(\tR\x05units:\x02\x18\x01\"\xd7\x01\n\x0fTimeSeriesChart\x12\x14\n\x05title\x18\x01 \x01(\tR\x05title\x12\x33\n\x06series\x18\x02 \x03(\x0b\x32\x1b.chalk.server.v1.TimeSeriesR\x06series\x12\x35\n\x08x_series\x18\x03 \x03(\x0b\x32\x1a.google.protobuf.TimestampR\x07xSeries\x12>\n\rwindow_period\x18\x04 \x01(\x0b\x32\x19.google.protobuf.DurationR\x0cwindowPeriod:\x02\x18\x01\x42\x8b\x01\n\x13\x63om.chalk.server.v1B\nChartProtoP\x01Z\x12server/v1;serverv1\xa2\x02\x03\x43SX\xaa\x02\x0f\x43halk.Server.V1\xca\x02\x0f\x43halk\\Server\\V1\xe2\x02\x1b\x43halk\\Server\\V1\\GPBMetadata\xea\x02\tChalkRubyb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module ChalkRuby
  Series = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.Series").msgclass
  Chart = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.Chart").msgclass
  Point = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.Point").msgclass
  TimeSeries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.TimeSeries").msgclass
  TimeSeriesChart = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.server.v1.TimeSeriesChart").msgclass
end
