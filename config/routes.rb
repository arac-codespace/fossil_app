Rails.application.routes.draw do

#   resources :post
  root to: "pages#home"

  

  resources :directory, only: [:index, :show] do 
    resources :species, only: [:show]
  end
  
  resources :species, only: [:index]
  
  resources :fossils, except: [:index, :show]
  
  
  # Redirects users who enter a wrong route path.  Will disable while in development...
  # match '*path' => redirect('/'), via: :get

  
end
