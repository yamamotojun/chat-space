Rails.application.routes.draw do
  devise_for :users
resources :users, only: [:edit, :update, :destroy]
resources :groups, only: [:create]
root  'messeges#index'
end

