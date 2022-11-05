Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :flats, only: %i[index show create new destroy] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: %i[index show]
end
