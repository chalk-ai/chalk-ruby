module ChalkRuby
  # Base exception class for errors thrown by the ChalkRuby
  # client library. ChalkError will be raised by any
  # network operation if ChalkRuby.init() has not been called.
  #
  class ChalkError < StandardError
  end

  # An exception class raised when the REST API returns an error.
  # The error code and message will be parsed out of the HTTP response,
  # which is also included in the response attribute.
  #
  class ChalkHttpError < ChalkError
    attr_accessor :code, :message

    def initialize(code:, message:)
      self.code    = code
      self.message = message
      super("#{self.code}: #{self.message}")
    end
  end
end
