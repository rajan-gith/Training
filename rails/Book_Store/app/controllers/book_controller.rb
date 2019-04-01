class BookController < ApplicationController
  before_action :authenticate_user!, except: [:index, :view]
  before_action :set_book, only: [:view, :edit, :update, :delete]
  def index
    @books = Book.all
  end

  def view

  end

  def new
    @book = Book.new
  end

  def create
    # debugger
    @book = Book.new(book_params)
    if @book.save()
      redirect_to book_view_path(:id => @book.id)
    else
      render 'new'
    end
  end

  def update

    if @book.update(book_params)
      redirect_to book_view_path(:id => @book.id)
    else
      render 'edit'

    end
  end

  def delete
    @book.destroy
    redirect_to root_path
  end

  def edit

  end

  private
  def book_params
    params.require(:book).permit(:name, :price, :user_id)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
