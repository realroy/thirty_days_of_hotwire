Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :multi_select, only: %i[index] do
    post :select_technologies, on: :collection
  end

end
