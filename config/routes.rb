Rails.application.routes.draw do
  resources :users, only: :show
  devise_for :users
  resources :products, only: :show do
    resources :reviews, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  root 'products#index'
end
