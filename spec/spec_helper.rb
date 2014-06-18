require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
require_relative '../lib/shoppu'
require 'pry-debugger'

RSpec.configure do |config|
  config.after :each do
    Shoppu::OrdersRepo.delete_all
    Shoppu::ItemsRepo.delete_all
  end
end
