class UserController < ApplicationController
  def user_list
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
end
