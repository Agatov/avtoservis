Rails.application.routes.draw do

  root to: 'application#index'

  resources :categories, only: :show do
    resources :services, only: [:index, :show]
  end
  resources :photos, only: :index


  namespace :admin do
    resources :services
    resources :photos
    resources :categories
    resources :banners
    resources :settings
  end
end
