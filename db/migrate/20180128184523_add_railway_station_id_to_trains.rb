class AddRailwayStationIdToTrains < ActiveRecord::Migration[5.1]
  def change
  	add_belongs_to :trains, :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  end
end
