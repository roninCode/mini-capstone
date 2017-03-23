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

  #checkout stuff
  post '/orders' => 'orders#create'
  get '/orders/:id/show' => 'orders#show'
end
