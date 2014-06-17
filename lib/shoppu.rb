require 'shoppu/version'
Dir[File.dirname(__FILE__) + "/shoppu/interactors/*.rb"].each {|file| require file }
Dir[File.dirname(__FILE__) + "/shoppu/repositories/*.rb"].each {|file| require file }
Dir[File.dirname(__FILE__) + "/shoppu/entities/*.rb"].each {|file| require file }

module Shoppu
  # Your code goes here...
end
