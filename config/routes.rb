Rails.application.routes.draw do
  devise_for :users
  root  'messeges#index'
 end


