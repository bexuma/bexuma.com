Rails.application.routes.draw do
  resources :ten_thousand_days,  path: '10000dney'


  devise_for :users
  get 'pages/about'



  resources :posts do
  	resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
