require 'simplecov'
SimpleCov.start

require 'aruba/cucumber'
require 'busser/cucumber'

=begin
# Aruba::VERSION >= 0.7.0
Aruba.configure do |c|
  c.root_directory = '/'
  c.working_directory = ''
end
=end

Before do
  @aruba_timeout_seconds = 60
end

After do |s|
  # Tell Cucumber to quit after this scenario is done - if it failed.
  # This is useful to inspect the 'tmp/aruba' directory before any other
  # steps are executed and clear it out.
  Cucumber.wants_to_quit = true if s.failed?
end
