# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get '/properties/list' => 'properties#index'
  get '/properties/:id' => 'properties#show'
  get '/agents/:id' => 'agents#show'
  get '/agents/list' => 'agents#index'
  root to: 'homepage#index'
  resources :homepage
  resources :properties
  resources :agents

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
