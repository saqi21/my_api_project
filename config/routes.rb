Rails.application.routes.draw do
  
  resources :employees , only: [:edit,:show,:index]  do
    #resources :attendances,only: [:index]
  	resources :attendances , only: [:index]
	end

	# post "/sync_employees", to: "employees#sync_employees", as: "sync_empolyees"
	# post "/sync_attendance", to: "employees#sync_attendance", as: "sync_attendance"

	post "/sync_employees", to: "syncronize#sync_employees", as: "sync_empolyees"
	post "/sync_attendance", to: "syncronize#sync_attendance", as: "sync_attendance"

end