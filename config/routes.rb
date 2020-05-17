Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
  get '/users/:id/favorites' => 'users#favorites'
  resources :categories
  resources :media do 
    resources :experiences, only: [:new, :index, :edit]
  end
  resources :experiences
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
