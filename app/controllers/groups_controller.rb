class GroupsController < ApplicationController
  def new

  end

  def create

    @group = Group.new(group_params)
    @group.save
    redirect_to '/'
  end

  def index

  end

  private def group_params
    params.permit(:name, :password, :date)
  end
end
