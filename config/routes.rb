Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :drivers, only: [:index, :new, :create]

  get "users/:id/drivers", to: "users#drivers", as: :user_bookings
  resources :cars do
    resources :bookings, only: [:new, :create]
    # changed it from universal resources to only new and create as needed
  end
  resources :bookings, except: [:new, :create]
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html