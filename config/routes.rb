Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# Create (1)
get "/persons/new", to: "persons#new"
# Create (2)
post "/persons", to: "persons#create"
# Read (1)
get "/persons", to: "persons#index"
# Read (2)
get "/persons/:id", to: "persons#show"
# Update (1)
get "/persons/:id/edit", to: "persons#edit" 
# Update (2)
patch "/persons/:id", to: "persons#update"
# Delete



end
