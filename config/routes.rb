Rails.application.routes.draw do
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
  resources :tickets
  resources :sv_wagons,   controller: "wagons", type: "SvWagons"
  resources :coupe_wagons,   controller: "wagons", type: "CoupeWagons"
  resources :plackart_wagons,   controller: "wagons", type: "PlackartWagons"
  resources :sit_wagons,   controller: "wagons", type: "SitWagons"

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
