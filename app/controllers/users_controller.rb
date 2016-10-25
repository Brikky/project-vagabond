class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.profile_photo == ''
      @user.profile_photo = 'https://s11.postimg.org/pja7dqo3n/vagabunny.png'
    end
    if @user.save
      flash[:success] = 'Welcome to Vagabond!'
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render :new
    end
    
  end

  def show
    @posts = @user.posts
  end

  def index
    @users = User.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def get_user
    if current_user
      @user = current_user
    else
      @user = User.find(params[:id])
    end
  end

end
