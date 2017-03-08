class BooksController < ApplicationController
  def hello
    p "Hello!!!"
    render 'books.html.erb'
  end
end
