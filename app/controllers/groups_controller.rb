class GroupsController < ApplicationController
  def new

  end

  def create

    @group = Group.new(group_params)
    @group.save
    @user = User.new(user_params)
    @user.group = @group


    @user.save

    redirect_to '/'
  end

  def index

  end

  private def group_params

    params.permit(:name, :password, :date)
  end

  private def user_params
    params.permit(:name_user, :email, :wish)
  end

  private def hashPassword(p)
    x = p % 100
    y = (p / 100) % 100
    z = p / 10000
    s = z.chr + y.chr + x.chr
  end
end
