Rails.application.routes.draw do
  root "home#index"
    devise_for :users 
    
  #   devise_scope :user do  
  #     get '/users/sign_out' => 'devise/sessions#destroy'     
  # end
  patch '/users/password' => 'devise/passwords#update', as: :update_user_password

  get '/users' => 'users#index'
  post '/users/sign_in' => 'devise/sessions#create'
  delete '/users/sign_out' => 'devise/sessions#destroy' 
  # resources :users, only: [:index]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
