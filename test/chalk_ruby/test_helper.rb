require 'simplecov'

if ENV['COVERAGE']
  SimpleCov.start
end

require 'bundler/setup'
require 'chalk_ruby'
require 'minitest/autorun'
require 'minitest/hooks'

class Minitest::Test
  include Minitest::Hooks
  include ChalkRuby::Helpers
end
