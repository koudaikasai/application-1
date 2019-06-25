Rails.application.routes.draw do

  devise_for :users

  root to: 'home#show'

  get 'home/about' => 'home#about'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:show, :edit, :index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
