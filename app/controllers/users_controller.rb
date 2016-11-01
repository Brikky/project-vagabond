class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  before_action :logged_in?, only: [:show, :edit, :update]

  def new
    @new_user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      flash[:success] = 'Welcome to Vagabond Tales!'
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    @city = City.find_by_id(@user.current_city)

    @user_cities = @posts.pluck(:city_id)
    @post_count = instance_count(@user_cities)
    @city_with_post_count = @post_count.map {|k,v| [City.find(k).name, v]}.to_h
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
    params.require(:user).permit(:name, :current_city, :profile_photo)
  end

  def instance_count(array)
    counts = Hash.new 0

    array.each do |item|
      counts[item] += 1
    end
    counts
  end
end
