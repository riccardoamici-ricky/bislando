Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :islands do
    resources :bookings, only: [:create, :show, :new]
  end
  resources :bookings, only: [:destroy]
  get "my_bookings", to: "bookings#my_bookings"
end
