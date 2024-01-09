module ChalkRuby
  class Token
    attr_accessor :token, :expires_at, :environment, :engines

    # @param [Hash[String, untyped]] exchange_credentials_response
    def initialize(exchange_credentials_response)
      @token       = exchange_credentials_response[:access_token]
      @expires_at  = DateTime.parse(exchange_credentials_response[:expires_at])
      @environment = exchange_credentials_response[:primary_environment]
      @engines     = exchange_credentials_response[:engines]
    end

    def expired?
      DateTime.now.advance({ seconds: 60 }) > @expires_at
    end
  end
end

