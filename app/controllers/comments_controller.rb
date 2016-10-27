class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @user = current_user
    post_id = params[:comment][:post_id]
    @post = Post.find(post_id)
    @comment = @post.comments.create(comment_params)
    @comment.user_id = @user.id
    @comment.save
    redirect_to post_path(@post)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text_body,:user_id,:post_id)
  end
end
