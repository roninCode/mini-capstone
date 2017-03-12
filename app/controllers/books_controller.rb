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

  def new
    render 'submit_here.html.erb'
  end
 
  def create
    @book = Book.new(
      title:  params['title'],
      author: params['author'],
      price: params['price'],
      image: params['image'],
      description: params['description'],
      copyright_year:  params['copyright_year'],
    )
    @book.save
    render 'post_new_book.html.erb'
  end

end
