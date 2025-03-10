require 'minitest/autorun'
require 'chalk_ruby/grpc_client'
require 'arrow'

class ArrowConversionTest < Minitest::Test
  def setup
    @client = create_client
  end

  def test_arrow_string_conversion
    assert_type_conversion('test_string', 'string', String)
  end

  def test_arrow_large_string_conversion
    test_string = 'test_large_string'
    # For large string types, we might get a GLib::Bytes object, which can be converted to a string
    result = assert_type_conversion(test_string, 'large_string', [String, GLib::Bytes])
    # Check the actual content
    actual_value = result.is_a?(GLib::Bytes) ? result.to_s : result
    assert_equal test_string, actual_value
  end

  def test_arrow_int8_conversion
    assert_type_conversion(8, 'int8', Integer)
  end

  def test_arrow_int16_conversion
    assert_type_conversion(16, 'int16', Integer)
  end

  def test_arrow_int32_conversion
    assert_type_conversion(32, 'int32', Integer)
  end

  def test_arrow_int64_conversion
    assert_type_conversion(64, 'int64', Integer)
  end

  def test_arrow_uint8_conversion
    assert_type_conversion(8, 'uint8', Integer)
  end

  def test_arrow_uint16_conversion
    assert_type_conversion(16, 'uint16', Integer)
  end

  def test_arrow_uint32_conversion
    assert_type_conversion(32, 'uint32', Integer)
  end

  def test_arrow_uint64_conversion
    assert_type_conversion(64, 'uint64', Integer)
  end

  def test_arrow_float_conversion
    assert_type_conversion(3.14, 'float', Float)
  end

  def test_arrow_double_conversion
    assert_type_conversion(3.14159, 'double', Float)
  end

  def test_arrow_boolean_conversion
    assert_type_conversion(true, 'boolean', [TrueClass, FalseClass])
  end

  def test_arrow_timestamp_conversion
    # Create timestamp as a Ruby Time object
    timestamp = Time.now
    # Pass timestamp seconds since epoch to Arrow
    arrow_timestamp = timestamp.to_i
    # Check that it converts back to a Time-like object
    result = assert_type_conversion(arrow_timestamp, 'timestamp[s]', Time)
    # Check that the timestamp values are approximately equal
    assert_in_delta timestamp.to_i, result.to_i, 1
  end

  def test_arrow_date32_conversion
    # Date represented as days since epoch
    today = Date.today
    days_since_epoch = (today - Date.new(1970, 1, 1)).to_i
    result = assert_type_conversion(days_since_epoch, 'date32', Date)
    assert_equal today, result
  end

  def test_arrow_binary_conversion
    binary_data = "\x01\x02\x03\x04"
    # For binary types, we might get a GLib::Bytes object, which can be converted to a string
    result = assert_type_conversion(binary_data, 'binary', [String, GLib::Bytes])
    # Check the actual content
    actual_value = result.is_a?(GLib::Bytes) ? result.to_s : result
    assert_equal binary_data, actual_value
  end

  def test_arrow_large_binary_conversion
    large_binary_data = "\x01\x02\x03\x04" * 10
    # For binary types, we might get a GLib::Bytes object, which can be converted to a string
    result = assert_type_conversion(large_binary_data, 'large_binary', [String, GLib::Bytes])
    # Check the actual content
    actual_value = result.is_a?(GLib::Bytes) ? result.to_s : result
    assert_equal large_binary_data, actual_value
  end

  def test_arrow_list_conversion
    # Skip this test as it's difficult to create a list array with the current Arrow Ruby API
    skip "Creating list arrays requires more complex approach with current Arrow Ruby API"
  end

  def test_arrow_struct_conversion
    # Skip this test as it's difficult to create a struct array with the current Arrow Ruby API
    skip "Creating struct arrays requires more complex approach with current Arrow Ruby API"
  end

  def test_arrow_null_conversion
    # Test that null values are properly converted to nil
    schema = Arrow::Schema.new([Arrow::Field.new("test_null", Arrow::Int32DataType.new)])
    
    # Create array with a null value
    builder = Arrow::Int32ArrayBuilder.new
    builder.append_null
    array = builder.finish
    
    table = Arrow::Table.new(schema, [array])
    
    # Serialize to Arrow IPC streaming format
    buffer = Arrow::ResizableBuffer.new(0)
    output = Arrow::BufferOutputStream.new(buffer)
    writer = Arrow::RecordBatchStreamWriter.new(output, table.schema)
    writer.write_table(table)
    writer.close
    output.close
    arrow_data = buffer.data.to_s
    
    result = @client.send(:arrow_table_to_array, arrow_data)
    
    assert_instance_of Array, result
    assert_equal 1, result.length
    assert_nil result[0]["test_null"]
  end

  private

  def create_client
    config = ChalkRuby::Config.new(
      client_id: 'test',
      client_secret: 'test',
      environment: 'test',
      query_server: 'test'
    )
    ChalkRuby::GrpcClient.new(config)
  end

  def assert_type_conversion(value, arrow_type_name, expected_ruby_type)
    # Create schema with the specified arrow type
    data_type = create_arrow_data_type(arrow_type_name)
    schema = Arrow::Schema.new([Arrow::Field.new("test_field", data_type)])
    
    # Create array with the value
    array = create_arrow_array(data_type, value)
    
    # Create table with schema and array
    table = Arrow::Table.new(schema, [array])
    
    # Serialize table to Arrow IPC streaming format
    buffer = Arrow::ResizableBuffer.new(0)
    output = Arrow::BufferOutputStream.new(buffer)
    writer = Arrow::RecordBatchStreamWriter.new(output, table.schema)
    writer.write_table(table)
    writer.close
    output.close
    arrow_data = buffer.data.to_s
    
    # Convert arrow data to array of hashes
    result = @client.send(:arrow_table_to_array, arrow_data)
    
    # Check that the value was properly converted
    assert_instance_of Array, result
    assert_equal 1, result.length
    
    expected_types = Array(expected_ruby_type)
    assert expected_types.any? { |type| result[0]["test_field"].is_a?(type) }, 
           "Expected #{result[0]["test_field"].inspect} to be a #{expected_ruby_type}, but was #{result[0]["test_field"].class}"
    
    # Return the converted value for further assertions
    result[0]["test_field"]
  end

  def create_arrow_data_type(type_name)
    case type_name
    when 'int8' then Arrow::Int8DataType.new
    when 'int16' then Arrow::Int16DataType.new
    when 'int32' then Arrow::Int32DataType.new
    when 'int64' then Arrow::Int64DataType.new
    when 'uint8' then Arrow::UInt8DataType.new
    when 'uint16' then Arrow::UInt16DataType.new
    when 'uint32' then Arrow::UInt32DataType.new
    when 'uint64' then Arrow::UInt64DataType.new
    when 'float' then Arrow::FloatDataType.new
    when 'double' then Arrow::DoubleDataType.new
    when 'string' then Arrow::StringDataType.new
    when 'large_string' then Arrow::LargeStringDataType.new
    when 'binary' then Arrow::BinaryDataType.new
    when 'large_binary' then Arrow::LargeBinaryDataType.new
    when 'boolean' then Arrow::BooleanDataType.new
    when 'timestamp[s]' then Arrow::TimestampDataType.new(:second)
    when 'date32' then Arrow::Date32DataType.new
    else
      raise "Unsupported arrow type: #{type_name}"
    end
  end

  def create_arrow_array(data_type, value)
    case data_type
    when Arrow::Int8DataType
      builder = Arrow::Int8ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::Int16DataType
      builder = Arrow::Int16ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::Int32DataType
      builder = Arrow::Int32ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::Int64DataType
      builder = Arrow::Int64ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::UInt8DataType
      builder = Arrow::UInt8ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::UInt16DataType
      builder = Arrow::UInt16ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::UInt32DataType
      builder = Arrow::UInt32ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::UInt64DataType
      builder = Arrow::UInt64ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::FloatDataType
      builder = Arrow::FloatArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::DoubleDataType
      builder = Arrow::DoubleArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::StringDataType
      builder = Arrow::StringArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::LargeStringDataType
      builder = Arrow::LargeStringArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::BinaryDataType
      builder = Arrow::BinaryArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::LargeBinaryDataType
      builder = Arrow::LargeBinaryArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::BooleanDataType
      builder = Arrow::BooleanArrayBuilder.new
      builder.append_value(value)
      builder.finish
    when Arrow::TimestampDataType
      builder = Arrow::TimestampArrayBuilder.new(data_type)
      builder.append_value(value)
      builder.finish
    when Arrow::Date32DataType
      builder = Arrow::Date32ArrayBuilder.new
      builder.append_value(value)
      builder.finish
    else
      raise "Unsupported arrow data type: #{data_type.class}"
    end
  end
end