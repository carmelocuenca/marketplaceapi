# note: require 'devise' after require 'rspec/rails'
require 'devise'

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end