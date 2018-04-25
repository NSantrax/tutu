Rails.application.routes.draw do
  
  devise_for :users

  resource :search, only: [:create, :show]
  resources :tickets, only: [:create, :show, :new, :destroy, :index]

  namespace :admin do
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
    resources :sv_wagons,   controller: "wagons", type: "SvWagons"
    resources :coupe_wagons,   controller: "wagons", type: "CoupeWagons"
    resources :plackart_wagons,   controller: "wagons", type: "PlackartWagons"
    resources :sit_wagons,   controller: "wagons", type: "SitWagons"
    resources :tickets
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
