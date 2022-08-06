require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'RaoAkif')
  end

  describe 'User Model Properties' do
    it 'should not have a nill Name field' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
  end
end
