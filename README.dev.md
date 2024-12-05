## update the version number in the gemspec file
vim lib/chalk_ruby/version.rb

## build the gem, which pulls in the version from the above file
gem build ./chalk_ruby.gemspec

## push the gem to rubygems. Update the filename to be the gem you want to publish
gem push ./chalk_ruby-0.1.4.gem
