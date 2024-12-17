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
        output: %w(user.id user.socure_score)
      )

      expect(response).not_to be_nil
      # The response should be a OnlineQueryBulkResponse
      expect(response).to be_a(Chalk::Common::V1::OnlineQueryBulkResponse)
    end
  end
end
