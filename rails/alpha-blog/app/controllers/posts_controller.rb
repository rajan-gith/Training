class PostsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
    
  end

  def new
    @user = User.find(params[:id])
    @post = @user.posts.new
  end

  def edit
  end

  def create
    @user = User.find(params[:id])
    @post = @user.posts.new(post_params)
    if @post.save
      render('create')
    else
      render('new')
    end
  end

  def delete
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
