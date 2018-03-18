Rails.application.routes.draw do
  resources :trains
  resources :railway_stations
  resources :routes
  resources :users
  resources :tickets
  resources :wagons
  resources :sv_wagons,   controller: "wagons", type: "SvWagons"
  resources :coupe_wagons,   controller: "wagons", type: "CoupeWagons"
  resources :plackart_wagons,   controller: "wagons", type: "PlackartWagons"
  resources :sit_wagons,   controller: "wagons", type: "SitWagons"

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
