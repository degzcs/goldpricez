# coding: utf-8
$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require 'goldpricez'
require "bundler/setup"
Dir[File.join('./lib/goldpricez/**/*.rb')].each { |f| require f }
require 'rspec'
require 'pry'
require 'webmock/rspec'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = "spec/fixtures/cassettes"
  c.hook_into :webmock
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
