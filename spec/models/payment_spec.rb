require 'rails_helper'

RSpec.describe Payment, type: :model do
  before :each do
    @payment = Payment.create(author_id: 1, name: 'Shopping', amount: 200.50)
  end

  describe 'Payment Model Properties' do
    it 'should not have a nill User ID field' do
      @payment.author_id = nil
      expect(@payment).to_not be_valid
    end

    it 'should not have a nill Name field' do
      @payment.name = nil
      expect(@payment).to_not be_valid
    end

    it 'should not have a nill amount field' do
      @payment.amount = nil
      expect(@payment).to_not be_valid
    end
  end
end
