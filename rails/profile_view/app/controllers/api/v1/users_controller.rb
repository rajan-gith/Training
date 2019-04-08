module Api
  module V1s
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json:{status: 'SUCCESS', message: 'Loaded users', data: @users}, status: 201
      end

      def show
        @user = User.find(params[:id])
        render json:{status: 'SUCCESS', message: 'Loaded user', data: @user}, status: 201
      end

      def create
        debugger
        @user = User.new(user_params)
        if @user.save
          render json:{status: 'SUCCESS', message: 'saved user', data: @user}, status: 201
        else
          render json:{status: 'UNSUCCESS', message: 'user not saved'}, status: 201
        end
      end

      def update
        @user = User.find(params[:id])
        if @user.update(user_params)
          render json:{status: 'SUCCESS', message: 'saved user', data: @user}, status: 201
        else
          render json:{status: 'UNSUCCESS', message: 'user not saved'}, status: 201
        end
      end

      def delete
        @user = User.find(params[:id])
        @user.destroy
        render json:{status: 'Success', message: 'deleted'}, status: 204
      end
      private
      def user_params
        params.permit(:name, :details, :image)
      end
    end

  end
end
