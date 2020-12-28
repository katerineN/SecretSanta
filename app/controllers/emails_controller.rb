class EmailsController < ApplicationController
  def index

  end

  def create
    @group = Group.find_by_password params[:password]
    participants = User.where(id_group: @group.id).pluck(:id)
  end

end
