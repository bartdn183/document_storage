Rails.application.routes.draw do
  get 'users/users_access'

  get 'users/category_access'

  resources :documents, only: [:destroy]

  resources :categories
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
