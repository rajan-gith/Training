class PostsController < ApplicationController
  def edit
  end

  def new
    @post = Post.new
    debugger
  end

  def update
  end

  def create
    @post = Post.new(post_param)
    @post.save
    redirect_to root_path
  end
  
  private
  def post_param
    params.require(:post).permit(:title,:body)
  end
end
