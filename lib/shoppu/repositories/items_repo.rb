class ItemsRepo
  @@items = []

  def self.count
    @@items.count
  end

  def self.create(params)
    item = Item.new(domain_id: params[:domain_id], user_id: params[:user_id])
    @@items << item
    item
  end

  def self.first
    @@items.first
  end

  def self.delete_all
    @@items = []
  end

  def self.all
    @@items
  end
end
