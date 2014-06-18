require_relative '../lib/shoppu'
require 'pry-debugger'

RSpec.configure do |config|
  config.after :each do
    OrdersRepo.delete_all
    ItemsRepo.delete_all
  end
end
