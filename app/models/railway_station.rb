class RailwayStation < ApplicationRecord
	validates :title, presence: true

	has_many :trains
        has_many :railway_stations_routes
        has_many :routes, through: :railway_stations_routes
  
  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.station_number').joins(:railway_stations_routes).order("railway_stations_routes.station_number").uniq }
  
  #scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.station_number").uniq }

def update_station_number(route, station_number)
  station_route = railway_stations_routes.where(route: route).first
  station_route.update(station_number: station_number) if station_route
end

def station_number_in(route)
  station_route(route).try(:station_number)
end

def update_arrival_time(route, arrival_time)
  station_route = railway_stations_routes.where(route: route).first
  station_route.update(arrival_time: arrival_time ) if station_route
end

def arrival_time_in(route)
  station_route(route).try(:arrival_time).try(:strftime, "%H:%M")
end

def update_departure_time(route, departure_time)
  station_route = railway_stations_routes.where(route: route).first
  station_route.update(departure_time: departure_time) if station_route
end

def departure_time_in(route)
  station_route(route).try(:departure_time).try(:strftime, "%H:%M")
end

def self.select_routes(base_station, end_station)
  return if base_station == end_station
  base_station.routes & end_station.routes 
end

protected

def station_route(route)
  @station_route ||= railway_stations_routes.where(route: route).first
end


  
end
