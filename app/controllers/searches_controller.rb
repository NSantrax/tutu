class SearchesController < ApplicationController
  
  def show
    
  end

  def create
   @base_station = RailwayStation.find(params[:base_station_id])
   @end_station = RailwayStation.find(params[:end_station_id])
   @route = RailwayStation.select_routes(@base_station, @end_station) 
   
   render :show
 
  end

  private  

  def set_stations
   @base_station = RailwayStation.where(id: :base_station_id).all 
   @end_station = RailwayStation.where(id: :end_station_id).all
  end

end
