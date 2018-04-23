Rails.application.routes.draw do
  root to: 'events#index'
  get 'events/index'
  get 'events/new',  as: "new"
  get 'events/show'
  get 'events/edit', as: "edit"
  get 'events/destroy'

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  post "events/new", to: 'events#create'
  patch "events/edit", to:"events#update"



  

  # get '/home', to: 'application#home', as: 'home'
  # get '/secret', to: 'application#secret', as: 'secret'
  # get '/about', to: 'application#about', as: 'about'
  # get '/contact', to: 'application#contact', as: 'contact'
end
