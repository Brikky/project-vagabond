class PostsController < ApplicationController
  before_action :logged_in?, except: [:index]
  before_action :get_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
    if @posts.length > 10
      @posts = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
    end
  end

  def new
  end

  def create
    post = current_user.posts.create(post_params)

    post.city_id = params[:post][:city_id].to_i if post.user_id && !post.city_id
    post.photo = post.city.photo if post.photo == ''

    confirm_save(post)
  end

  def show
    @new_comment = Comment.new
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post.comments.delete_all
    @post.delete
    redirect_to user_path(current_user)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text_body, :photo)
  end

  def get_post
    @post = Post.find(params[:id])
  end

  def authorize
    redirect_to :back unless current_user == @post.user
  end

  def confirm_save(post)
    if post.save
      flash[:success] = "That's a great story!"
      redirect_to post_path(post)
    else
      flash[:error] = post.errors.full_messages.to_sentence
      render :new
    end
  end 
end
