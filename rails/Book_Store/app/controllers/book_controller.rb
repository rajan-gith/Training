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
    debugger
    @book = Book.new(book_params)
    if @book.save()
      render 'create'
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      render 'update'
    else
      render 'edit'
    end
  end

  def delete
    @book = Book.find(params[:id])
    @book.destroy
  end

  def edit
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:name, :price, :user_id)
  end
end
