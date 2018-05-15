Rails.application.routes.draw do

root to: "cars#index"

 devise_for :users
 resources :cars, only: [:show] do
   resources :bookings, only: [:create]
 end
 resources :bookings, only: [:index]

end




 # get 'bookings/index'
 #  get 'cars/index'
 #  get 'cars/show'
 #  devise_for :users
 #  root to: 'pages#home'
