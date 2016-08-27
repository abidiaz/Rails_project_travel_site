Rails.application.routes.draw do
  resources :attractions
  resources :reviews, except: [:destroy]
  resources :users, except: [:new]

  get '/', to: 'countries#index', as: 'countries'

  get '/cities/', to: 'cities#index'
  get '/cities/:id', to: 'cities#show', as: 'city'

  get '/countries/:id', to: 'countries#show', as: 'country'

  get '/signup', to: 'users#new', as: 'signup'
  # get '/', to: 'application#index', as: 'root_url'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'new_session'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  delete '/reviews/:id', to: 'reviews#destroy', as: 'delete_review'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
