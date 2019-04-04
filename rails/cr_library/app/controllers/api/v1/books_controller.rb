module Api
  module V1
    class BooksController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        @books = Book.all
        render json: @books
      end
      def create
        # debugger
        @book = Book.new(book_param)
        if @book.save
          render json: @book
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def show
        @book = Book.find(params[:id])
        render json: @book
      end
      def update
        @book = Book.find(params[:id])
        if @book.update(book_param)
          render json: @book
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: {message: "Deleted"}
      end
      private
      def book_param
        params.permit(:title, :author_id)
      end
    end
  end
end
