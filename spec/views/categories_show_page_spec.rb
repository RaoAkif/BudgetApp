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
      name: 'Food',
      icon: '🍔'
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

  it 'when click on the category name, should lead to the edit category page' do
    click_link 'Food'
    expect(current_path).to eq(edit_category_path(@category))
  end

  it 'should render the correct text' do
    expect(page).to have_content('payment 1')
    expect(page).to have_content('payment 2')
    expect(page).to have_content('payment 3')
    expect(page).to have_content('payment 4')
    expect(page).to have_content('payment 5')
  end

  it 'when click on a payment, should lead to the correct page' do
    click_link 'payment 1'
    expect(current_path).to eq(edit_category_payment_path(@category, payment.first))
  end

  it 'should have a link to add a new payment' do
    expect(page).to have_link('New payment')
  end

  it 'new payment link should lead to new payment page' do
    click_link('New payment')
    expect(current_path).to eq(new_category_payment_path(@category))
  end
end
