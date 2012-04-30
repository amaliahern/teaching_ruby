require_relative '../../hashalive'

require 'capybara/cucumber'
require 'capybara'
require 'rspec'

World do
Capybara.app = HashAlive 

include Capybara::DSL
include RSpec::Matchers
end
