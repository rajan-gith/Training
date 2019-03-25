class UserController < ApplicationController
  def user_list
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def delete
    @user = User.find(params[:id])
    @user.destroy
  end
  def new
    @user = User.new
  end
end
