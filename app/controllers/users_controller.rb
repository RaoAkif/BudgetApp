class UsersController < ApplicationController
  def splash
    @current_user = current_user
    authorize! :read, User
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
