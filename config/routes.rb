Rails.application.routes.draw do
  get '/' => 'books#index'
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show'
  get '/books/:id/edit' => 'books#edit'
  patch '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'

  #Users
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  #login
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #order stuff
  post '/orders' => 'orders#create'
  get '/orders/:id/show' => 'orders#show'

  #cart   -----  show all carted books...submitted via book/show
  get '/carts' => 'carts#index'
  post '/carts' => 'carts#create'
  # post books "add to cart" to '/cart'

end
