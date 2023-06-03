Rails.application.routes.draw do
  devise_for :users
     devise_scope :user do
       get '/users/sign_out' => 'devise/sessions#destroy'
     end
  get 'persons/profile'
  resources :uslugis
  resources :icons
  get 'pages/usluga'
  get 'pages/oplata'
  get 'pages/park_texniki'
  get 'pages/nas'
  get 'pages/kontakt'
  get 'salon/index'
  get 'persons/profile', as: 'user_root'

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root to: "salon#index", as: "salon"
end
