Rails.application.routes.draw do
  root 'sessions#welcome'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'signup' => 'users#new'
  resources :categories
  resources :media
  resources :experiences
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
