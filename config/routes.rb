Rails.application.routes.draw do
  get 'karasaki/index'
  get 'katata/index'
  get 'nannko/index'
  get 'hamaootu/index'
  root "items#index"
  get 'items/search'
  devise_for :users
  resources :users
  resources :items do 
    resources :comments
    member do
      get 'my'
    end
  end
  resources :comments
  resources :nannko, only: :index
  resources :hamaootu, only: :index
  resources :karasaki, only: :index
  resources :katata, only: :index
end
