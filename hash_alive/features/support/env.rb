# Generated by cucumber-sinatra. (2012-04-19 08:25:27 +0200)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/hash_alive.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = HashAlive

class HashAliveWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  HashAliveWorld.new
end