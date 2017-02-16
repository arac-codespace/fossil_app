Rails.application.routes.draw do

#   resources :post
  root to: "pages#home"
  get 'index', to: 'pages#index'  
  
  get 'index/mollusca', to: 'pages#mollusca', as: :mollusca 
  get 'index/brachiopoda', to: 'pages#brachiopoda', as: :brachiopoda
  get 'index/echinodermata', to: 'pages#echinodermata', as: :echinodermata
  get 'index/arthropod', to: 'pages#arthropod', as: :arthropod
  get 'index/foraminifera', to: 'pages#foraminifera', as: :foraminifera
  

  resources :fossils
  
  
  
end
