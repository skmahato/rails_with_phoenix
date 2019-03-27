Rails.application.routes.draw do
  root 'users#index'

  namespace :api do
    resources :users, only: :index
  end
end
