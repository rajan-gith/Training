class UserController < ApplicationController
  def user_list
    @user = User.all
  end

end
