module Shoppu
  class AddItemToOrder
    def initialize(params)
      @params = params
    end

    def execute
      ItemsRepo.create(@params)
    end
  end
end
