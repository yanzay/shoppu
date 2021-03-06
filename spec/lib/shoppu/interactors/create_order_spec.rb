require 'spec_helper'

describe Shoppu::CreateOrder do
  let(:request) { {domain_id: 'example.com', user_id: 1} }

  it 'initializes with hash' do
    expect{described_class.new(request)}.to_not raise_error
  end

  describe '#execute' do
    subject { described_class.new(request) }

    it { should respond_to(:execute) }

    it 'creates new order' do
      expect(Shoppu::OrdersRepo.count).to eq(0)
      subject.execute
      expect(Shoppu::OrdersRepo.count).to eq(1)
      order = Shoppu::OrdersRepo.first
      expect(order.user_id).to eq(request[:user_id])
      expect(order.domain_id).to eq(request[:domain_id])
    end
  end
end
