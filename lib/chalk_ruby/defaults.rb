require 'chalk_ruby/http/http_requester'
require 'chalk_ruby/version'

module ChalkRuby
  module Defaults
    REQUESTER_CLASS = Http::HttpRequester
    ADAPTER         = 'net_http_persistent'

    # HTTP Headers
    # ----------------------------------------
    HEADER_CLIENT_ID     = 'X-Chalk-Client-Id'.freeze
    HEADER_CLIENT_SECRET = 'X-Chalk-Client-Secret'.freeze
    HEADER_ENVIRONMENT   = 'X-Chalk-Env-Id'.freeze
    AUTHORIZATION_HEADER = 'Authorization'.freeze
    USER_AGENT           = "ChalkRuby Ruby (#{ChalkRuby::VERSION}), Ruby (#{RUBY_VERSION})"

    # API Servers
    # ----------------------------------------
    QUERY_SERVER = 'https://api.prod.chalk.ai'.freeze
    API_SERVER   = 'https://api.prod.chalk.ai'.freeze

    # HTTP ERROR CODES
    # ----------------------------------------
    ERROR_BAD_REQUEST = 400
    ERROR_FORBIDDEN   = 403
    ERROR_NOT_FOUND   = 404
    ERROR_TIMED_OUT   = 408

    # HTTP TIMEOUTS
    # ----------------------------------------
    CONNECT_TIMEOUT = 100
    API_TIMEOUT     = 300
    QUERY_TIMEOUT   = 1200

    WAIT_TASK_DEFAULT_TIME_BEFORE_RETRY = 100
  end
end
