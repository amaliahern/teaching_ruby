ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', '../hash_alive/hashalive.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = HashAlive 

class HashAlive
    include Capybara::DSL
    include RSpec::Expectations
    include RSpec::Matchers
end

World do
    HashAlive.new
end

