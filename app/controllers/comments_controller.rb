class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    post_id = params[:comment][:post_id]
    @post = Post.find(post_id)
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    confirm_save(@comment)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text_body,:user_id,:post_id)
  end

  def confirm_save(comment)
    unless comment.save
      flash[:error] = 'Must include text!'
    end
    redirect_to post_path(@post)
  end
end
