Rails.application.routes.draw do
  # エンドユーザ側
    devise_for :users
    resources :users do
      get 'withdrawal', on: :member
      get 'ordered', on: :collection
    end
  # 住所
    resources :addresses
  # 商品
    resource :orders, only: [:new,:create] do
      resources :order_products, only: [:new,:show,:create]
    end
    
    resources :products do 
      resource :carts, only: [:create]
    end
    resources :carts, only: [:index,:update,:destroy]
  
  # 管理者側
    devise_for :admins, controllers: {
      :sessions => 'admins/sessions'
  }
    namespace :admins do
     get '/' => 'products#index'
     resources :products
     resources :users
    end
  
  # TOP画面
    root 'home#top'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  