require 'spec_helper'

describe CreateOrder do
  let(:request) { {domain: 'example.com', user_id: 1} }

  it 'initializes with hash' do
    expect{described_class.new(request)}.to_not raise_error
  end

  describe '#execute' do
    subject { described_class.new(request) }

    it {should respond_to(:execute)}

    it 'creates new order' do
      expect(OrdersRepo.count).to eq(0)
      subject.execute
      expect(OrdersRepo.count).to eq(1)
      order = OrdersRepo.first
      expect(order.user_id).to eq(request[:user_id])
      expect(order.domain).to eq(request[:domain])
    end
  end
end
