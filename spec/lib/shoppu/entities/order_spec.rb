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

  describe '#items' do
    it 'returns order items' do
      item = Shoppu::ItemsRepo.create({order_id: 2, product_id: 1, quantity: 2})
      expect(subject.items.count).to eq(1)
      expect(subject.items.first).to eq(item)
    end

    it 'returns empty array if there is no items' do
      expect(subject.items).to eq([])
    end
  end
end
