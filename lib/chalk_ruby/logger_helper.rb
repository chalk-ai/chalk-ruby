require 'logger'

module ChalkRuby
  class LoggerHelper
    # @param debug_file [nil|String] file used to output the logs
    #
    def self.create(debug_file = nil)
      file              = debug_file || (ENV['CHALK_DEBUG'] ? File.new('debug.log') : $stderr)
      instance          = ::Logger.new file
      instance.progname = 'chalk'
      instance
    end
  end
end
