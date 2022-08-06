require 'rails_helper'

RSpec.describe 'Category Index Page', type: :feature do
  before(:each) do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
    @user.save!
    sign_in @user
    (1..5).each do |id|
      Category.create(
        author_id: @user.id,
        name: "Category #{id}",
        icon: '🍔'
      )
    end
    visit categories_path
  end

  it 'should render the correct text' do
    expect(page).to have_content('Category 1')
    expect(page).to have_content('Category 2')
    expect(page).to have_content('Category 3')
    expect(page).to have_content('Category 4')
    expect(page).to have_content('Category 5')
  end

  it 'when click on a category, should lead to the correct page' do
    click_link 'Category 1'
    expect(current_path).to eq(category_path(Category.first))
  end

  it 'should have a link to add a new category' do
    expect(page).to have_link('New Category')
  end

  it 'new category link should lead to new category page' do
    click_link('New Category')
    expect(current_path).to eq(new_category_path)
  end
end
