Rails.application.routes.draw do
  get '/' => 'books#index'
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/book/:id' => 'books#show'
end
