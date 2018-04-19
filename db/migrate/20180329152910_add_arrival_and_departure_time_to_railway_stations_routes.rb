class AddArrivalAndDepartureTimeToRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations_routes, :arrival_time,  :time, default: 0
    add_column :railway_stations_routes, :departure_time,  :time, default: 0
  end
end
