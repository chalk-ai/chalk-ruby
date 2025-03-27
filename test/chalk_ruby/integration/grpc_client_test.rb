require 'rspec'
require 'chalk_ruby'

RSpec.describe ChalkRuby::GrpcClient do
  describe '#query_bulk' do
    let(:client) do
      ChalkRuby::GrpcClient.create(
        ENV.fetch('CHALK_CLIENT_ID'),
        ENV.fetch('CHALK_CLIENT_SECRET'),
        ENV.fetch('CHALK_ENVIRONMENT', 'tmnmc9beyujew'),
        ENV.fetch('CHALK_QUERY_SERVER', 'standard-gke.chalk-develop.gcp.chalk.ai'),
        ENV.fetch('CHALK_API_SERVER', 'api.staging.chalk.ai:443')
      )
    end

    it 'can perform bulk queries' do
      response = client.query_bulk(
        input: { 'user.id': 1 },
        output: %w(user.id user.socure_score),
        planner_options: {'defer_non_bus_persist_operators': "1"}, # test planner option
        query_name: "planner_options_test",

      )

      expect(response).not_to be_nil
      # The response should have no errors and user_id of 1
      expect(response[:errors]).to be_empty
      expect(response[:data][0]['user.id']).to eq(1)
    end
    it 'can perform bulk queries without planner options' do
      response = client.query_bulk(
        input: { 'user.id': 1 },
        output: %w(user.id user.socure_score),
        query_name: "no_planner_options_test",
      )

      expect(response).not_to be_nil
      # The response should have no errors and user_id of 1
      expect(response[:errors]).to be_empty
      expect(response[:data][0]['user.id']).to eq(1)
    end
  end
end
