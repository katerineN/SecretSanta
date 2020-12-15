class UsersController < ApplicationController

  def index

  end

  def create

    @user = User.new(user_params)
    @user.id_group = 1
    @user.save

    redirect_to '/'
  end

  private def user_params
    params.permit(:name_user, :email, :wish)
  end
end
