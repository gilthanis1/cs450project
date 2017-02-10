Rails.application.routes.draw do

  devise_for :users
	# Site Root Route
  root 'static_pages#home'

  devise_scope :user do
    get '/edit' => 'devise/registrations#edit', as: 'edit_user'
    get '/signup' => 'registrations#new', as: 'new_user'
  end

  # User Profile Page Re-define
  get '/profile',	to: 'users#show', :as => :user

  # Static Pages Routes
  get  '/help', 	 to: 'static_pages#help'
  get  '/about', 	 to: 'static_pages#about' 
  get  '/contact', to: 'static_pages#contact'
end
