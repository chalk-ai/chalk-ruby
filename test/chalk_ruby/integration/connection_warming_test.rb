require 'minitest/autorun'
require 'chalk_ruby/client'
require 'chalk_ruby/config'

describe 'Connection warming' do
  it 'should accept eagerly_initialize_connection_pool parameter in config' do
    config = ChalkRuby::Config.new(
      client_id: 'test_id',
      client_secret: 'test_secret',
      eagerly_initialize_connection_pool: true
    )
    
    assert_equal true, config.eagerly_initialize_connection_pool
  end
  
  it 'should default eagerly_initialize_connection_pool to false' do
    config = ChalkRuby::Config.new(
      client_id: 'test_id',
      client_secret: 'test_secret'
    )
    
    assert_equal false, config.eagerly_initialize_connection_pool
  end
  
  it 'should accept eagerly_initialize_connection_pool parameter in create method' do
    # This test verifies the parameter is accepted
    params = ChalkRuby::Client.method(:create).parameters.map(&:last)
    assert params.include?(:eagerly_initialize_connection_pool)
  end
  
  it 'should have warm_connections method' do
    # Test that the method exists on the class
    assert ChalkRuby::Client.public_instance_methods.include?(:warm_connections)
  end
end