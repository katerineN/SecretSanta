class GroupsController < ApplicationController
  def new

  end

  def create

  end

  def index

  end

  def group_params
    params.require(:groups).permit(:name,:date,:password)
  end
end
