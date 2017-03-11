Rails.application.routes.draw do
  get '/' => 'books#index'
  get '/books' => 'books#index'
  get '/book/:id' => 'books#show'
  get '/books' => 'books#s'
end
