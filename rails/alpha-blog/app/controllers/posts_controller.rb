class PostsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def delete
  end
end
