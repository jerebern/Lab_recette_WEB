#Jeremy Bernard 18/11/2020
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"acceuil#acceuil"
  get '/mesrecettes', to: 'recettes#show'
  namespace :admin do
    get '/recettes/:is_admin', to: 'user#show'
    get '/recettes/:id/:is_admin', to: 'recette#recette'
  end

end
