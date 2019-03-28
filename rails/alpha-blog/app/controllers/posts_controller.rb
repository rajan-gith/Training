class PostsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
    # redirect_to posts_show_path
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
      redirect_to posts_show_path(:id =>@post.id)
    else
      render('edit')
    end
  end

  def create
    @user = User.find(params[:id])
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to posts_index_path(:id => @user.id)
    else
      render('new')
    end
  end

  def delete
    @post = Post.find(params[:id])
    id = @post.user_id
    @post.destroy
    redirect_to posts_index_path(:id => id)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
