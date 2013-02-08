$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + "/../lib")

require 'rubygems'
require 'bundler/setup'
require 'ribiprocessing'

RSpec.configure do |config|
  # some (optional) config here
end
