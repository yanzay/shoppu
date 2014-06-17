class OrdersRepo
  @@orders = []

  def self.count
    @@orders.count
  end

  def self.create(params)
    @@orders << Order.new(params[:domain], params[:user_id])
  end

  def self.first
    @@orders.first
  end
end
