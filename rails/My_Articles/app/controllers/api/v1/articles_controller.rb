module Api
  module V1
    class ArticlesController < ApplicationController

      def index
        @articles = Article.all
        render json:{status: 'SUCCESS', message: 'Loaded articles', data: @articles}, status: :ok
      end
      def create
      end
      def show
      end
      def update
      end
      def destroy
      end
    end
  end
end
