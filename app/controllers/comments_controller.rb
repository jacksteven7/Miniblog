class CommentsController < ApplicationController
  def new
  	
  end
  def create
  	@post = Post.find(params[:id])
  	@comment = @post.comments.build(params[:comment])
  	if(@comment.save)
  		redirect_to post_path(@post)
  	end
  end
end
