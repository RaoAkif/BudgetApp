require 'rails_helper'

RSpec.describe 'categories', type: :request do
  before(:each) do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
    sign_in @user
    Category.create(
      author_id: @user.id,
      name: 'Food',
      icon: '🍔'
    )
  end

  describe 'GET /index' do
    before { get categories_path }

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'should render the correct text' do
      expect(response.body).to include('Food')
    end
  end
end
