Rails.application.routes.draw do
  get 'site/about'

  get 'site/contact'

  get 'site/homecategory'

  resources :categories
  devise_for :users
  
  
  
  get 'cart/index'

  resources :items
  root 'static_pages#home'
  

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'
  
  get '/admin', to: 'user#admin_login'
  get '/logout', to: 'user#logout'
  
  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id' => 'cart#remove'
  
  get 'homecategory/:title', to: 'static_pages#homecategory'
  
   post '/search' => 'items#search'
 
  root :to => 'site#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
