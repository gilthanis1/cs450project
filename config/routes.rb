Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'products/index'

  devise_scope :user do
    get '/edit' => 'devise/registrations#edit', as: 'edit_user_registration'
    get '/signup' => 'registrations#new', as: 'new_user_registration'
  end

  devise_for :users, :controllers => { :registrations => :registrations }

  # User Profile Page Re-define, and user_path for Blips
  get '/profile', to: 'users#show', :as => :user

  # Site Root Route
  root 'static_pages#home'

  # Static Pages Routes
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about' 
  get  '/contact', to: 'static_pages#contact'

  # Shop and Review Routes
  resources :reviews

  # Shopping Cart Routes
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  
end