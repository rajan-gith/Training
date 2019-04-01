class BookController < ApplicationController
  def index
    @books = Book.all
  end

  def view
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
  end

  def update
  end

  def delete
  end

  def edit
  end
end
