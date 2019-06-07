# frozen_string_literal: true

Rails.application.routes.draw do
  resources :game_lists, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/gamelist' => 'game_lists#index'
  get '/gamelist/id' => 'game_lists#show'
  post '/gamelist' => 'game_lists#create'
  delete '/gamelist/:id' => 'game_lists#destroy'
  patch '/gamelist/:id' => 'game_lists#update'
end
