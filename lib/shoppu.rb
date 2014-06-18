require 'shoppu/version'

require 'singleton'
require 'shoppu/adapters/memory_store'
Dir[File.dirname(__FILE__) + "/shoppu/interactors/*.rb"].each {|file| require file }
Dir[File.dirname(__FILE__) + "/shoppu/entities/*.rb"].each {|file| require file }

require 'shoppu/repositories/repository'
require 'shoppu/repositories/items_repo'
require 'shoppu/repositories/orders_repo'

module Shoppu
  # Your code goes here...
end
