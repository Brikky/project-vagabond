class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def index
      @posts = Post.all
  end

  def edit
  end
end
