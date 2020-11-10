Rails.application.routes.draw do
  root to: "flights#index"
  resources :flights
  resources :bookings, except: [:index, :edit, :update, :destroy]
end
