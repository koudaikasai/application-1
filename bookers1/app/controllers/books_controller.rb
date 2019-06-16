class BooksController < ApplicationController

  def show
  	  @book = Book.find(params[:id])
  end

  def index
  	  @books = Book.all
      @book = Book.new
  end

  def home
  end

  def create
  	  book = Book.new(book_params)
  	  if book.save
        flash[:notice] = "successfully"
      else
        render action :new
      end
  	  redirect_to book_path(book)
  end

  def edit
  	  @book = Book.find(params[:id])
  end

  def update
  	  book = Book.find(params[:id])
  	  if book.update(book_params)
        flash[:notice] = "successfully"
      else
        render action :new
      end
  	  redirect_to book_path(book)
  end

  def destroy
  	  book = Book.find(params[:id])
  	  book.destroy
  	  redirect_to '/books'
  end
  private
  def book_params
    	params.require(:book).permit(:title, :body)
  end
end
