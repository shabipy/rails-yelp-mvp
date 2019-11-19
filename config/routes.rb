Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show'
  # get 'restaurants/:id/reviews/new', to: 'reviews#new'
  # post 'restaurants:id/reviews', to: 'reviews#create'
  # namespace :admin do
  #   resources :restaurants, only: [:update, :destroy]
  # end
end
