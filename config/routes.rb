Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/create/file/", to: "application#create_file"

  get "/create/file", to: "application#create_file_form", as: "create_file_form"

  get "/files", to: "application#index"
end
