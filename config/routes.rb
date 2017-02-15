Rails.application.routes.draw do

#   resources :post
  root to: "pages#home"
  get 'index', to: 'pages#index'  
  
  get 'index/mollusca', to: 'pages#mollusca'  
  get 'index/brachiopoda', to: 'pages#brachiopoda'  
  get 'index/echinodermata', to: 'pages#echinodermata'  
  get 'index/arthropod', to: 'pages#arthropod'  
  get 'index/foraminifera', to: 'pages#foraminifera'  
  

  resources :fossils
  
  
  
end
