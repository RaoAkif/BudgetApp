require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(
      name: 'RaoAkif',
      email: 'akifrao@gmail.com',
      password: '123456',
      password_confirmation: '123456'
    )
  end

  describe 'User Model Properties' do
    it 'name should be present' do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'email should be present' do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it 'password should be present' do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it 'name should be unique' do
      @duplicate_user = User.create(
        name: 'RaoAkif',
        email: 'akifrao@gmail.com',
        password: '123456',
        password_confirmation: '123456'
      )
      expect(@duplicate_user).to_not be_valid
    end
  end
end
