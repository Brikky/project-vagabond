class PostsController < ApplicationController
  before_action :logged_in?, except: [:index]

  def new
    @post = Post.new
    @user = current_user
  end

  def show
    @post = Post.find(params[:id])
    @user = current_user
  end

  def index
      @posts = Post.all
  end

  def create
    @user = current_user
    @post = current_user.posts.create(post_params)
    if @post.user_id && !@post.city_id
      @post.city_id = params[:post][:city_id].to_i
    end
    if @post.photo == ''
      @post.photo = @post.city.photo
    end
    if @post.save
      flash[:success] = "That's a great story!"
      redirect_to user_post_path(current_user,@post)
    else
      flash[:error] = @post.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @user = current_user
  end

  def update
    @post = Post.find(params[:id])
    @user = current_user
    @post.update(post_params)
    redirect_to user_post_path(@user, @post)
  end
  def destroy
    post = Post.find(params[:post_id])
    post.delete
    redirect_to :back
  end

  private

  def post_params
    params.require(:post).permit(:title, :text_body, :photo)
  end
end
