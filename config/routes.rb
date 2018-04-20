Rails.application.routes.draw do
  devise_for :users
  resources :trains do
     resources :wagons, shallow: true
  end
  resources :railway_stations do
    patch :update_station_number, on: :member
    patch :update_arrival_time, on: :member
    patch :update_departure_time, on: :member    
  end
  resources :routes
  resources :users
  resources :tickets, only: [:create, :show, :new, :destroy, :index]
  resources :sv_wagons,   controller: "wagons", type: "SvWagons"
  resources :coupe_wagons,   controller: "wagons", type: "CoupeWagons"
  resources :plackart_wagons,   controller: "wagons", type: "PlackartWagons"
  resources :sit_wagons,   controller: "wagons", type: "SitWagons"
  resource :search, only: [:create, :show]

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
