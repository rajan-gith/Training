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

  def create
    # render plain: params[:user].inspect
    @user = User.new(user_params)
    if @user.save
      render('create')
    else
      render('new')
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:username,:email,:gender,:ph_no)
  end
end
