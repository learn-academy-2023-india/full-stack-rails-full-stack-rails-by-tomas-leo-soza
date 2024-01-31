Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index" 
  get "/index", to:"blog#index", as: "animals"
  get "/dogs", to:"blog#dogs"
  get "/cats", to:"blog#cats"
  get "/snakes", to:"blog#snakes"
  get "/racoons", to:"blog#racoons"
  get "index/:id", to:"blog#show", as: "animal"
  get "/new", to:"blog#new", as: "new_blog"
  # get "/new", to:"blog#new"

end
