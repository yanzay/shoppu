class Shoppu::MemoryStore
  include Singleton

  def initialize
    @store = {}
  end

  def get_all(entity_type)
    @store[entity_type]
  end

  def save(entity_type, entity)
    @store[entity_type] ||= []
    @store[entity_type] << entity
  end

  def delete_all(entity_type)
    @store[entity_type] = []
  end
end
