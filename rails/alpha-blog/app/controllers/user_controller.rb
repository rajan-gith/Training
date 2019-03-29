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
    redirect_to user_path()
  end

  def new
    @user = User.new
  end

  def create
    debugger

    @user = User.new(user_params)
    if @user.save
      render 'show'
    else
      render('new')
    end
  end

  def update
    # debugger
    @user = User.find(params[:id])
    if @user.update(user_params)
      render('show')
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
