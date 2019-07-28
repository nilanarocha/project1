# frozen_string_literal: true

Rails.application.routes.draw do
  get '/properties/list' => 'properties#index'
  get '/properties/:id' => 'properties#show'
  get '/agents/:id' => 'agents#index'
  root to: 'homepage#index'
  resources :homepage
  resources :properties
  resources :agents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
