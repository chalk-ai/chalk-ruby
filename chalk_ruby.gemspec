require 'date'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'chalk_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'chalk_ruby'
  spec.version       = ChalkRuby::VERSION
  spec.authors       = ['Chalk AI, Inc.']
  spec.email         = ['help@chalk.ai']

  spec.date        = Date.today
  spec.licenses    = ['Apache-2.0']
  spec.summary     = 'A simple Ruby client for Chalk'
  spec.description = 'A simple Ruby client for Chalk'
  spec.homepage    = 'https://github.com/chalk-ai/chalk-ruby'

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/chalk-ai/chalk-ruby/issues',
    'documentation_uri' => 'https://docs.chalk.ai/docs',
    'source_code_uri' => 'https://github.com/chalk-ai/chalk-ruby'
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem
  # that have been added into git.
  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '<= 0.82.0'

  spec.add_dependency 'faraday', ['>= 0.15', '< 3']
  spec.add_dependency 'faraday-net_http_persistent', ['>= 0.15', '< 3']
  spec.add_dependency 'grpc', ['>=1.64.3', '< 2']

  spec.add_dependency 'multi_json', '~> 1.0'
  spec.add_dependency 'net-http-persistent'

  spec.add_development_dependency 'httpclient'
  spec.add_development_dependency 'm'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-hooks'
  spec.add_development_dependency 'minitest-proveit'
  spec.add_development_dependency 'red-arrow', '~> 18.0.0'
end
