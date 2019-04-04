module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        @articles = Article.order('created_at DESC')
        render json: @articles
      end

      def show
        # debugger
        @article = Article.find(params[:id])
        render json: @article
      end
      def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
          render json:{status: 'SUCCESS', message: 'Loaded article', data: @article}, status: 201
        else
          render json:{status: 'UNSUCCESS', message: 'Could not be saved', data: @article.errors}, status: 422
        end
      end
      def destroy
        begin
          @article = Article.find(params[:id])
          @article.destroy
          render json:{status: 'SUCCESS', message: 'Deleted article'}, status: 204
        rescue Exception => e
          render json:{status: 'UNSUCCESS', message: 'Could not be deleted', data: e}, status: 422
        end
      end
      def create
        # debugger
        @article = Article.new(article_params)
        if @article.save
            render json: @article
        else
          render json:{status: 'UNSUCCESSFUL', message: 'Could not be saved', data: @article.errors}, status: 422
        end
      end
      private
      def article_params
        params.permit(:title, :body)
      end
    end
  end
end
