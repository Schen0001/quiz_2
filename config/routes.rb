Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :destroy, :create]
  resources :posts


  get '/' => "posts#index"

  get '/new' => 'posts#new'
  post '/new' => 'posts#create'

  get '/sessions/new' => 'sessions#new'
  get '/users/new' => 'users#new'
end
