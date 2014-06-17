class Order
  attr_accessor :domain, :user_id

  def initialize(domain, user_id)
    @domain, @user_id = domain, user_id
  end
end
