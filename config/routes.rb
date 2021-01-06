Rails.application.routes.draw do
  default_url_options :host => "localhost:3001"

  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :produits

  post '/create_liker', to: 'produits#create_liker'
  get '/favorites', to: 'users#favorites'
  delete '/favorites', to: 'users#remove_favorite'
end
