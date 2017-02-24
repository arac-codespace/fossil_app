Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
#   resources :post
  root to: "pages#home"
  get '/about', to: 'pages#about'
  get '/general_information', to: 'pages#general_information'
  get '/taxonomy_overview', to: 'pages#taxonomy_overview'

  

  resources :directory, only: [:index, :show] do 
    resources :species, only: [:show]
  end
  
  resources :species, only: [:index]
  
  resources :fossils, except: [:index, :show]
  
  
  # Redirects users who enter a wrong route path.  Will disable while in development...
  # match '*path' => redirect('/'), via: :get

  
end
