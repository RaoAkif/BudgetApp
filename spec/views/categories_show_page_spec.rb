require 'rails_helper'

RSpec.describe 'Category Show Page', type: :feature do
  before(:each) do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
    @user.save!
    sign_in @user

    @category = Category.create(
      author_id: @user.id,
      name: 'Shopping',
      icon: 'https://img.icons8.com/color/480/000000/shopping-cart-loaded.png'
    )

    (1..5).each do |id|
      @category.payments.create(
        author_id: @user.id,
        name: "payment #{id}",
        amount: 100
      )
    end

    visit category_path(@category)
  end

  it 'should render the correct text' do
    expect(page).to have_content('payment 1')
    expect(page).to have_content('payment 2')
    expect(page).to have_content('payment 3')
    expect(page).to have_content('payment 4')
    expect(page).to have_content('payment 5')
  end
end
