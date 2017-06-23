Rails.application.routes.draw do
  devise_for :users
  root  'messeges#index'
  get   'users/:id'   =>  'users#edit'
  put   'users/:id'   =>  'users#update'
 end


