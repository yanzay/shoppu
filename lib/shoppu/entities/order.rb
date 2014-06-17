class Order
  attr_accessor :domain_id, :user_id, :id

  def initialize(params)
    @domain_id, @user_id = params.values_at(:domain_id, :user_id)
  end

  def items
    ItemsRepo.all
  end
end
