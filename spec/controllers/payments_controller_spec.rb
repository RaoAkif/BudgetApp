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
      name: 'Food',
      icon: '🍔'
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

  describe 'GET /index' do
    before { get category_path(@category) }

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      expect(response).to render_template('show')
    end

    it 'should render the correct text' do
      expect(response.body).to include('Burger')
    end
  end
end
