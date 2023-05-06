Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :home, only: %i[index]
  resources :multi_select, only: %i[index] do
    post :select_technologies, on: :collection
  end
  resources :realtime_online_users, only: %i[index]

  root 'home#index'
end
