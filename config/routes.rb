Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :flats
end


# NEED TO LINK TO THE BOOKINGS MODEL ONCE CREATED: like this
  # resources :desks / flats , only: %i[index show create new destroy] do
  #   resources :bookings, only: [:create]
  # end
  # resources :bookings, only: :show
