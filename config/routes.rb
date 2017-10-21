Rails.application.routes.draw do
  get '/cart' => 'cart#index'

  get '/about' => 'site#about'

  get 'site/contact' => 'site#contact' 

  get 'site/home' => 'site#home' 

  get 'cart/index'
  
 get '/cart/:id' => 'cart#add'
 
 get '/cart/remove/:id' => 'cart#remove'


  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
