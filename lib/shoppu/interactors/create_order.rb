class CreateOrder
  def initialize(request)
    @request = request
  end

  def execute
    OrdersRepo.create(@request)
  end
end
