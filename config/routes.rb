Rails.application.routes.draw do

root to: "cars#index"

 devise_for :users
 resources :cars, only: [:index, :show, :new, :create] do
   resources :bookings, only: [:create]
 end
 resources :bookings, only: [:index]

 namespace :my do
  resources :cars, only: [:index]
end

end




 # get 'bookings/index'
 #  get 'cars/index'
 #  get 'cars/show'
 #  devise_for :users
 #  root to: 'pages#home'
