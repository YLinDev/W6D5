Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "cats#index"

  resources :cats, except: :destroy do
    resources :cat_rental_requests, only: [:new]
  end
end