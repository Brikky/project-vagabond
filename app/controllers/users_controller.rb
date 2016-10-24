class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.profile_photo == ''
      @user.profile_photo = 'https://s11.postimg.org/pja7dqo3n/vagabunny.png'
      @user.save
    end
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :current_city, :password, :profile_photo)
  end
end
