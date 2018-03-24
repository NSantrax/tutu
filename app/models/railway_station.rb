class RailwayStation < ApplicationRecord
	validates :title, presence: true

	has_many :trains
        has_many :railway_stations_routes
        has_many :routes, through: :railway_stations_routes

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.station_number").uniq }

def update_station_number(route, station_number)
  station_route = railway_stations_routes.where(route: route).first
  station_route.update(station_number: station_number) if station_route
end

def station_number_in(route)
  station_route(route).try(:station_number)
end



protected

def station_route(route)
  @station_route ||= railway_stations_routes.where(route: route).first
end


  
end
