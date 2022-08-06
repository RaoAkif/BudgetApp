require 'rails_helper'

RSpec.describe payment, type: :model do
  before :each do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
    @payment = payment.create(
      author_id: @user.id,
      name: 'Burger',
      amount: 100
    )
  end

  describe 'payment Model Properties' do
    it 'should have an author' do
      @payment.author_id = nil
      expect(@payment).to_not be_valid
    end

    it 'name should be present' do
      @payment.name = nil
      expect(@payment).to_not be_valid
    end

    it 'amount should be present' do
      @payment.amount = nil
      expect(@payment).to_not be_valid
    end

    it 'amount should be greater than 0' do
      @payment.amount = 0
      expect(@payment).to_not be_valid
    end
  end
end
