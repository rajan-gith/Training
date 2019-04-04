module Api
  module V1
    class UsersController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        @users = User.all
        render json: @users
      end
      def create
        # debugger
        @user = User.new(user_param)
        if @user.save
          render json: @user
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def show
        @user = User.find(params[:id])
        render json: @user
      end
      def update
        @user = User.find(params[:id])
        if @user.update(user_param)
          render json: @user
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "Deleted"}
      end
      private
      def user_param
        params.permit(:first_name, :last_name, :email)
      end
    end
  end
end
