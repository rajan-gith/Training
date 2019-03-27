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
    @post = Post.find(params[:id])

  end

  def update
    # debugger
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render('create')
    else
      render('edit')
    end
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_index_path
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
