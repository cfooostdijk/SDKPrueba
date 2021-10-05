require 'sidekiq/web'

Rails.application.routes.draw do

  root to: "home#index"
  
  resources :teams, only:[:index, :show]

  mount Sidekiq::Web => '/sidekiq'
end
