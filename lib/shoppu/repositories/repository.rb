module Shoppu
  module Repository

    def adapter
      Shoppu::MemoryStore.instance
    end

    def model(model_class)
      @model = model_class
    end

    def count
      all.count
    end

    def create(params)
      raise ArgumentError unless params
      item = @model.new(params)
      adapter.save(@model, item)
      item
    end

    def first
      all.first
    end

    def all
      adapter.get_all(@model)
    end

    def delete_all
      adapter.delete_all(@model)
    end
  end
end
