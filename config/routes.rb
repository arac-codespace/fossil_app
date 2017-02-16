Rails.application.routes.draw do

#   resources :post
  root to: "pages#home"
  # get 'index', to: 'pages#index'  
  
  # resources :index, only: [:index]
  
  resources :directory, only: [:index, :show] do 
    resources :species, only: [:show]
  end
  
  resources :species, only: [:index]
  
  resources :fossils, except: [:index, :show]
  
  # get '/mollusca', to: 'pages#mollusca'
  # get '/brachiopoda', to: 'pages#brachiopoda'
  # get '/echinodermata', to: 'pages#echinodermata'
  # get '/arthropod', to: 'pages#arthropod'
  # get '/foraminifera', to: 'pages#foraminifera'
  

  # resources :fossils
  
  
  
end
