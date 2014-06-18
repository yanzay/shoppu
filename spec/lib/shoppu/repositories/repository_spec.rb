require 'spec_helper'

describe Shoppu::Repository do
  class Shoppu::FooRepo
    extend Shoppu::Repository
    model Shoppu::Order
  end

  subject { Shoppu::FooRepo }

  describe '#create' do
    it 'raises error when empty params passed' do
      expect{subject.create(nil)}.to raise_error(ArgumentError)
    end

    it 'creates new item if valid params passed' do
      expect(subject.count).to eq(0)
      item = subject.create({domain_id: 1})
      expect(subject.count).to eq(1)
      expect(subject.first.domain_id).to eq(item.domain_id)
    end
  end
end
