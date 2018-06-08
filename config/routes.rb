Rails.application.routes.draw do
  telegram_webhook TelegramWebhooksController

  post 'authenticate', to: 'authentication#authenticate'

  resources :tasks
  resources :users, only: [:create]
  get 'token', to: 'master#token'
  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
