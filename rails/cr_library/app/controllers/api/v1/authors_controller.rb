module Api
  module V1
    class AuthorsController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        @authors = Author.all
        # render json: @authors
        # render :json => { Author: AuthorSerializer.new(@authors , root: false, serializer_options: {bookName: "books"}), :status => 200}
        # render json: serializer: AuthorSerializer
        # render json: @authors, adapter: :json, serializer_options: {bookName: "1234"},status: 200
        render json: @authors, adapter: :json, serializer_options: {bookName: params[:book_name]},status: 200
      end
      def create
        # debugger
        @author = Author.new(author_param)
        if @author.save
          render json: @author
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def show
        @author = Author.find(params[:id])
        render json: @author
      end
      def update
        @author = Author.find(params[:id])
        if @author.update(author_param)
          render json: @author
        else
          render json: {message: "must be wrong with params"}
        end
      end
      def destroy
        @author = Author.find(params[:id])
        @author.destroy
        render json: {message: "Deleted"}
      end
      private
      def author_param
        params.permit(:first_name, :last_name)
      end
    end
  end
end
