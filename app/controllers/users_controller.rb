class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update]
  before_action :logged_in?, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.profile_photo == ''
      @user.profile_photo = 'https://s11.postimg.org/pja7dqo3n/vagabunny.png'
    end
    if @user.save
      login(@user)
      flash[:success] = 'Welcome to Vagabond!'
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render :new
    end
    
  end

  def show
    @posts = @user.posts
    @city = City.find_by({name: @user.current_city})
  end

  def index
    @users = User.all
  end

  def edit
  end

  def update
    @user.update_attribute(:name, params[:user][:name])
    @user.update_attribute(:current_city, params[:user][:current_city])
    @user.update_attribute(:profile_photo, params[:user][:profile_photo])
    redirect_to user_path(@user)
  end

  private

  def get_user
    if current_user
      @user = current_user
    else
      redirect_to login_path
    end
  end

  def edit_user_params
    params.require(:user).permit(:name,:current_city,:profile_photo)
  end

end
