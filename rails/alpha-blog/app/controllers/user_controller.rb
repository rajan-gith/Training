class UserController < ApplicationController
  def user_list
    @users = User.all
  end
  

end
