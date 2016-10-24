class PostsController < ApplicationController
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
    @post = current_user.posts.create(post_params)
    redirect_to user_post_path(current_user,@post)
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

  private

  def post_params
    params.require(:post).permit(:title, :text_body, :photo)
  end
end
