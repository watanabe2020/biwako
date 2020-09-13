Rails.application.routes.draw do
  root "items#index"
  devise_for :users
  resource :users
  resource :items
end
