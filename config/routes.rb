Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    # get '/restaurants', to: 'restaurants#index'
    # get '/restaurants/new', to: 'restaurants#new'
    # post '/restaurants', to: 'restaurants#create'
    # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
    resources :reviews, only: [:new, :create]
  end
end
