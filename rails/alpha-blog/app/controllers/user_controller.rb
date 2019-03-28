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
    debugger
    
    @user = User.new(user_params)
    if @user.save
      render('create')
    else
      render('new')
    end
  end

  def update
    debugger
    @user = User.find(params[:id])
    if @user.update(user_params)
      render('update')
    else
      render('edit')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email, :gender, :ph_no)
  end
end
