Rails.application.routes.draw do
  
  resources :employees , only: [:edit,:show,:index] 
    #resources :attendances,only: [:index]
   resources :attendances , only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
