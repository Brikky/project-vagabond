class PostsController < ApplicationController
  before_action :logged_in?, except: [:index]

  def new
    @post = Post.new
    @user = current_user
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  def index
    @posts = if !params[:user_id].nil?
               User.find_by(name: params[:user_id]).posts
             else
               Post.all
             end

    # if @posts.length > 10
    #   @posts = Post.paginate(page: params[:page], per_page: 10)
    # end
  end

  def create
    @user = current_user
    @post = current_user.posts.create(post_params)

    @post.city_id = params[:post][:city_id].to_i if @post.user_id && !@post.city_id

    @post.photo = @post.city.photo if @post.photo == ''

    if @post.save
      flash[:success] = "That's a great story!"
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to user_path(current_user)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text_body, :photo)
  end
end
