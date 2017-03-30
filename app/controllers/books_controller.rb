class BooksController < ApplicationController
before_action :authenticate_admin!, :except => [:index, :show] 
  def index
    # if params[:sort_price] == "low_to_high"
    #   @books = Book.order(:price)
    # elsif params[:sort_price] == "high_to_low"
    #   @books = Book.order(price: :desc)
    # elsif params[:sale_item] == "ten_or_less"
    #   @books = Book.where("price <= ?", 10)
    # else
    #   @books = Book.all
    # end
    @books = Book.all
    if params[:category] == "adventure"
      @books = Category.find_by(name: params[:category].capitalize) ###instance or array....each way breaks something
    else
      @books = Book.all
    end
    render 'index.html.erb'
  end

  def show
    book_id = params[:id]
    if params[:random_item] == "random_item"
      @book = Book.all.shuffle[0]
    else
      @book = Book.find_by(id: book_id)
    end
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end
 
  def create
    @book = Book.new(
      title:  params['title'],
      author: params['author'],
      price: params['price'],
      image: params['image'],
      description: params['description'],
      copyright_year:  params['copyright_year']
    )
    @book.save
    flash[:success] = "Yeah you just added a book....damn you must feel super bueno"
    redirect_to "/books/#{@book.id}"
  end

  def edit
    @book = Book.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(
      title: params["title"],
      author: params["author"],
      description: params["description"],
      copyright_year: params["copyright_year"],
      price: params["price"]
    )
    flash[:info] = "You just updated this book...interesting...books' info doesn't change that often.... maybe you f*#*ed the F up"
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:danger] = "You just destroyed the crap out of this book!!! Oh yeah, burn it down!"
    redirect_to "/"
  end
end
