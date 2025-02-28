class BooksController < ApplicationController

  def create
   book = Book.(book_params)
   book.save
   redirect_to books_path(book.id)
  end

  def index
    @books = Book.all
  end

  def show
  end

  def edit

  end

  def update

  end

  def destroy
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
