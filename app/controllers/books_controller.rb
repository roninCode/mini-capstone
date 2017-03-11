class BooksController < ApplicationController
  def index
    @books = Book.all
    render 'index.html.erb'
  end

  def show
    book_id = params[:id]
    @book = Book.find_by(id: book_id)
    render 'show.html.erb'
  end

  
end
