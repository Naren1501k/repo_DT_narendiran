Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/home", to: "application#home" 
  
   get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server_error'
  
  get "/costomer" , to: "costomer#costomersupport"
  # Defines the root path route ("/")
  # root "posts#index"
end
