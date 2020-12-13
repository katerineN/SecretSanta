class DbController < ApplicationController
  def index
    @group=Group.new(group_params)
    @group.save
    redirect_to 'home'
  end

  def group_params
    params.require(:groups).permit(:name,:date,:password)
  end
end
