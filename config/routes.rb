Rails.application.routes.draw do
  root 'sessions#welcome'
  resources :categories
  resources :media
  resources :experiences
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
