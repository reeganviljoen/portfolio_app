Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :portfolios do
    resources :sections
  end
  # Defines the root path route ("/")
  root "portfolios#index"
end
