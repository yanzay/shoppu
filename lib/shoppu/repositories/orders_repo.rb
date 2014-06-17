class OrdersRepo
  @@orders = []

  def self.count
    @@orders.count
  end

  def self.create(params)
    order = Order.new(domain_id: params[:domain_id], user_id: params[:user_id])
    @@orders << order
    order
  end

  def self.first
    @@orders.first
  end

  def self.delete_all
    @@orders = []
  end
end
