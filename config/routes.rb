Rails.application.routes.draw do
  get 'users' => 'users#users_access'

  get 'users/category_access'

  resources :categories, except: [:index] do
  	member do
  	  delete :delete_document
  	end
  end

  devise_for :users
  resources :users, only: [:destroy] do
    member do
      post :activate
      delete :delete_user_cat
    end

    collection do
      post :category_access
    end
  end
  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
