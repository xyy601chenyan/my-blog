Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  root "posts#index"

  #get '/about', to: 'pages#about'

  get '/about' => 'pages#about'
end
