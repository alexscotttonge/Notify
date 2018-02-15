require 'simplecov'
require 'rack/test'
require 'sinatra'
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', 'app.rb')

def app
  @app ||= App.new
end

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end
