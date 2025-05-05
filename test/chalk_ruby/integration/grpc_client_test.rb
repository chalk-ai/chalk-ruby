$LOAD_PATH.unshift File.expand_path('../../../../lib', __FILE__)
# require 'rspec'
# require 'chalk_ruby'
# require 'chalk_ruby'

require 'date'
require 'rspec/autorun'
require 'chalk_ruby/grpc_client'
require 'chalk_ruby/grpc/auth_interceptor'
require 'chalk_ruby/error'
require 'chalk_ruby/protos/chalk/server/v1/auth_pb'
require 'chalk_ruby/protos/chalk/server/v1/auth_services_pb'
require 'chalk_ruby/protos/chalk/engine/v1/query_server_services_pb'
require 'arrow'




RSpec.describe ChalkRuby::GrpcClient do
  describe '#query' do
    let(:client) do
      ChalkRuby::GrpcClient.new(
        ChalkRuby::Config.new(
          query_server: "standard-gke.chalk-develop.gcp.chalk.ai",
          api_server: "api.staging.chalk.ai:443",
          client_id: CLIENT_ID,
          client_secret: CLIENT_SECRET,
          environment: "tmnmc9beyujew",
          # api_timeout: 0.6, # seconds
          # connect_timeout: 0.3, # seconds
          # query_service_root_ca_path: "/Users/andrew/found_ca.pem" # path to the root ca for chalkai.internal.found.app,
        )
      )
    end

    # it 'can perform queries' do
    #   response = client.query(
    #     input: { 'business.id': 1 },
    #     output: %w(business.id)
    #   )
    #
    #   expect(response).not_to be_nil
    #
    #   puts response
    #   # The response should be a OnlineQueryBulkResponse
    #   # expect(response).to be_a(Chalk::Common::V1::OnlineQueryBulkResponse)
    # end

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
