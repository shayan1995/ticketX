Rails.application.routes.draw do
  root to: 'events#index'
  get 'events/index'
  get 'events/show', as: "show"
  get 'events/new',  as: "new"
  get 'events/show'
  get 'events/edit', as: "edit"
  get 'events/destroy'
  get 'events/buy', as: "buy"

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  post "events/new", to: 'events#create'
  post "events/edit", to:"events#update"
  patch "events/show", to:'events#show'
  patch "events/edit", to:"events#edit"

  resources :charges



  

  # get '/home', to: 'application#home', as: 'home'
  # get '/secret', to: 'application#secret', as: 'secret'
  # get '/about', to: 'application#about', as: 'about'
  # get '/contact', to: 'application#contact', as: 'contact'
end
