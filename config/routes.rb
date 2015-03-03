Rails.application.routes.draw do

  root to: 'application#index'

  match 'contacts', to: 'application#contacts', via: :get


  resources :services, only: [:index, :show]
  resources :pages, only: [:index, :show]

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
    resources :sections
    resources :pages
  end
end
