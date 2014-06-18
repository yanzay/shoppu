module Shoppu
  module Repository
    @items = []

    def model(model_class)
      @model = model_class
    end

    def count
      @items.count
    end

    def create(params)
      item = @model.new(params)
      @items << item
      item
    end

    def first
      @items.first
    end

    def all
      @items
    end

    def delete_all
      @items = []
    end
  end
end
