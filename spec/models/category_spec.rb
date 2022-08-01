require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @category = Category.create(name: "Shopping", icon: "www.icon.com")
  end

  describe 'Category Model Properties' do
    it 'should not have a nill Name field' do
      @category.name = nil
      expect(@category).to_not be_valid
    end
  
    it 'should not have a nill Icon field' do
      @category.icon = nil
      expect(@category).to_not be_valid
    end
  end
end
