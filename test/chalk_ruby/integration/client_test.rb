require 'date'
require 'rspec/autorun'
require 'chalk_ruby/client'
require 'chalk_ruby/error'

CLIENT_ID     = ''
CLIENT_SECRET = ''

RSpec.describe 'Online query' do
  it 'should accept valid queries' do
    client   = ChalkRuby::Client.create(CLIENT_ID, CLIENT_SECRET)
    response = client.query(
      input: { 'user.id': 3454 },
      output: %w(user.id)
    )

    print response
  end
  it 'should run with planner options' do
    client   = ChalkRuby::Client.create(CLIENT_ID, CLIENT_SECRET)
    response = client.query(
      input: { 'user.id': 3454 },
      output: %w(user.id),
      planner_options: {'defer_non_bus_persist_operators': "1"} # test planner option
    )

    print response
  end
end
