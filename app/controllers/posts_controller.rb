class PostsController < ApplicationController
  def new
  	@post = Post.new
  	@posts = Post.find(:all)
  end
  def index
    redirect_to new_post_path
  end
  def create
  	@post = Post.new(params[:post])
  	if(@post.save)
  		redirect_to new_post_path
  	end
  end
  def show
  	@post = Post.find(params[:id])
  	@comment = @post.comments.build
    @comments = @post.comments
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to new_post_path
  end
end
