require 'rails_helper'

RSpec.describe Category, type: :model do
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
  end

  describe 'Category Model Properties' do
    it 'should have an author' do
      @category.author_id = nil
      expect(@category).to_not be_valid
    end

    it 'name should be present' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it 'icon should be present' do
      @category.icon = nil
      expect(@category).to_not be_valid
    end
  end
end
