Rails.application.routes.draw do
  
  resources :employees , only: [:edit,:show,:index] do
    resources :attendances,only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
