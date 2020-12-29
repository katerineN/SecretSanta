class UsersController < ApplicationController

  def index

  end

  def create

    @user = User.new(user_params)
    @user.group = Group.find_by_password params[:password]




  end

  private def user_params
    params.permit(:name_user, :email, :wish)
  end
end
