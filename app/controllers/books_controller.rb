class BooksController < ApplicationController
  def hello
    @books = Book.all
    render 'books.html.erb'
  end
end
