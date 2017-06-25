Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'coolie/getCoolie'
  get 'trips/create'
  get 'users/getUserTrips'
  get 'coolie/coolieAvailable'
  get 'trips/endTrip'
end
