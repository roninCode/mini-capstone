class CartsController < ApplicationController
  def index
    @books = Book.all
    render 'index.html.erb'
  end

end
