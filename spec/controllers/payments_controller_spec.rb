require 'rails_helper'

RSpec.describe 'payments', type: :request do
  before(:each) do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
    sign_in @user
    @category = Category.create(
      author_id: @user.id,
      name: 'Shopping',
      icon: 'https://img.icons8.com/color/480/000000/shopping-cart-loaded.png'
    )
    @payment = payment.create(
      author_id: @user.id,
      name: 'Burger',
      amount: 100
    )
    CategoryPayment.create(
      category_id: @category.id,
      payment_id: @payment.id
    )
  end
end
