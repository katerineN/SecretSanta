class EmailsController < ApplicationController
  def index

  end

  def create
    @group = Group.find_by_password params[:password]
    participants = User.where(group_id: @group).pluck(:id)
    participants.each do |ps|
      p = participants.sample
      receiver_id = p
      while (p == ps || Santas.find_by_receiver_id(:receiver_id))  do
        p = participants.sample
        receiver_id = p
      end
      @santa.group = @group
      @santa.sender_id = ps
      @santa.receiver_id = p
      @santa.save
    end

    #respond_to do |format|
    # if @user.save
        # Сказать UserMailer отослать приветственное письмо после сохранения
    #   UserMailer.with(user: @santa).santas_email.deliver_nowrake

    #   format.html { redirect_to('/', notice: 'User was successfully created.') }
    #   format.json { render json: @santa, status: :created, location: @santa }
    # else
    #   format.html { render action: 'new' }
    #   format.json { render json: @santa.errors, status: :unprocessable_entity }
    # end
    #end
  end

end
