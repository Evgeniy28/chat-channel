Rails.application.routes.draw do
  get 'messages/index'

  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]

  root 'sessions#new'
end
