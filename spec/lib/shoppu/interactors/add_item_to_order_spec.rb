require 'spec_helper'

describe Shoppu::AddItemToOrder do
  let(:order) { Shoppu::OrdersRepo.create(domain: 'domain.com') }
  let(:request) { {order_id: order.id, item_id: 2} }

  it 'initializes with hash' do
    expect{described_class.new(request)}.to_not raise_error
  end

  describe '#execute' do
    subject { described_class.new(request) }

    it { should respond_to(:execute) }

    it 'adds item to order' do
      expect(order.items.count).to eq(0)
      subject.execute
      expect(order.items.count).to eq(1)
      item = order.items.first
      expect(item.id).to eq(item.id)
    end
  end
end
