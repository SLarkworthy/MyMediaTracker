Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'

  get '/users/:id/favorites' => 'users#favorites'

  get '/auth/:provider/callback' => 'sessions#create'

  resources :media, only: [:index, :new, :create] do 
    resources :experiences, only: [:index, :new, :edit]
  end
  resources :experiences, only: [:show, :update, :destroy, :index, :create]
  resources :users, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
