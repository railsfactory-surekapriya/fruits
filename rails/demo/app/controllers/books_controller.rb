class BooksController < ApplicationController
def new
@book = Book.new
end
def list
@book = Book.new
@book = Book.find(:all)
end
def create
@book = Book.new(book_params)
if @book.save
redirect_to @book
else
render 'new'
end
end
private
def book_params
params.require(:book).permit(:name, :place)
end
def show
@book = Book.find(params[:id])
end
def index
@book = Book.all
end
end

