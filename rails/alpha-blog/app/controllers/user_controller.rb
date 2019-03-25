class UserController < ApplicationController
  def user_list
    @users = User.all
  end
  def show
    @user = User.where(id: params[:id])
  end

end
