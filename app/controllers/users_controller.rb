class UsersController < ApplicationController

  def index

  end

  def create

    @user = User.new(user_params)
    @user.group = Group.find_by_password params[:password]


    respond_to do |format|
      if @user.save
        # Сказать UserMailer отослать приветственное письмо после сохранения
        UserMailer.with(user: @user).santas_email.deliver_nowrake

        format.html { redirect_to('/', notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end

  end

  private def user_params
    params.permit(:name_user, :email, :wish)
  end
end
