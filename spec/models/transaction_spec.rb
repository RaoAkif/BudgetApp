require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before :each do
    @transaction = Transaction.create(user_id: 1, name: 'Shopping', amount: 200.50)
  end

  describe 'Transaction Model Properties' do
    it 'should not have a nill User ID field' do
      @transaction.user_id = nil
      expect(@transaction).to_not be_valid
    end

    it 'should not have a nill Name field' do
      @transaction.name = nil
      expect(@transaction).to_not be_valid
    end

    it 'should not have a nill amount field' do
      @transaction.amount = nil
      expect(@transaction).to_not be_valid
    end
  end
end
