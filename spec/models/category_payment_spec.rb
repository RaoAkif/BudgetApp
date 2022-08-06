require 'rails_helper'

RSpec.describe CategoryPayment, type: :model do
  before :each do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
    @category = Category.create(
      author_id: @user.id,
      name: 'Food',
      icon: '🍔'
    )
    @payment = payment.create(
      author_id: @user.id,
      name: 'Burger',
      amount: 100
    )
    @category_payment = CategoryPayment.create(
      category_id: @category.id,
      payment_id: @payment.id
    )
  end

  describe 'CategoryPayment Model Properties' do
    it 'should have a category' do
      @category_payment.category_id = nil
      expect(@category_payment).to_not be_valid
    end

    it 'should have an payment' do
      @category_payment.payment_id = nil
      expect(@category_payment).to_not be_valid
    end
  end
end
