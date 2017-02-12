Rails.application.routes.draw do

#   resources :post
  root to: "pages#home"
  
  resources :fossils
  
  
end
