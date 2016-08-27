Rails.application.routes.draw do
  resources :attractions
  resources :reviews
  resources :users



  get '/cities/', to: 'cities#index'

  get '/cities/:id', to: 'cities#show', as: 'city'

  get '/', to: 'countries#index'

  get '/countries/:id', to: 'countries#show', as: 'country'

  # get '/', to: 'application#index', as: 'root_url'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'new_session'
  get '/signout', to: 'sessions#destroy', as: 'signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
