class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
    flash[:error] = "Comment should have more 5 symbols" unless @comment.save
  end

  def destroy
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.find(params[:id])
  	@comment.destroy
  	redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :created_at)
    end
end
