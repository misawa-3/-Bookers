class BooksController < ApplicationController
  def index
  end
  
  def new
    @Books = Book.new
  end

  def create
    list = Book.new(book_params)
    list.save
    redirect_to '/top'
  end

  def show
  end

  def edit
  end
  
  private

  def list_params
    params.require(:book).permit(:title, :body)
  end

end
