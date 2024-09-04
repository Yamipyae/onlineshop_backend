Rails.application.routes.draw do
  resources :perfumes
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'showProduct' => 'products#show'
  get 'indexProduct' => 'products#index'
  post 'product_add' => 'products#create'
  patch 'products' => 'products#update'
  delete 'delete_product' => 'products#destroy'

  post 'diors' => 'diors#create'
  delete 'diors' => 'diors#destroy'
  get 'diors' => 'diors#index'

  post 'jule_palus' => 'jule_palus#create'
  get 'jule_palus' => 'jule_palus#index'
  delete 'jule_palus' => 'jule_palus#destroy'

  post 'perfumes' => 'perfumes#create'
  get 'perfumes' => 'perfumes#index'
  delete 'perfumes' => 'perfumes#destroy'
 
  post 'login' => 'user#login'
  get 'logout' => 'user#logout'

  post 'sigin' => 'user#create' 
  delete 'delete_user' => 'user#destroy'
  get 'show_user' => 'user#index'


  # Defines the root path route ("/")
  # root "posts#index"
  resources :diors
  resources :jule_palus
end
