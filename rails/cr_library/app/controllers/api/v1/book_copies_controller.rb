module Api
  module V1
    class BookCopiesController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        @records = BookCopy.all
        render json: @records
      end
      def create
        debugger
        @record = BookCopy.new(record_param)
        if @record.save
          render json: @record
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def show
        @record = BookCopy.find(params[:id])
        render json: @record
      end
      def update
        @record = BookCopy.find(params[:id])
        if @record.update(record_param)
          render json: @record
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def destroy
        @record = BookCopy.find(params[:id])
        @record.destroy
        render json: {message: "Deleted"}
      end
      private
      def record_param
        params.permit(:book_id, :isbn, :user_id, :published, :format)
      end
    end
  end
end
