require 'spec_helper'

describe Shoppu::Order do
  it 'initializes with hash of domain_id and user_id' do
    domain_id = 1
    user_id = 2
    order = described_class.new(domain_id: 1, user_id: 2)
    expect(order.domain_id).to eq(domain_id)
    expect(order.user_id).to eq(user_id)
  end

  subject { described_class.new(domain_id: 1, user_id: 2) }

  it { should respond_to(:items) }
end
