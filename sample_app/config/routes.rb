Rails.application.routes.draw do
    
    devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, :controllers => { :registrations => "user_registrations" }
    
    resources :users
    resources :orders, only: [:index, :show, :create, :destroy]
    resources :products do
        resources :comments
    end
    
    root 'static_pages#index'
    
    get 'static_pages/about'
    
    get 'static_pages/contact'
    
    post 'static_pages/received'
    get 'static_pages/received'
    
    get 'static_pages/featured'
    
    get 'static_pages/index'
    
    post 'payments/create'
    get 'payments/create'

    
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

