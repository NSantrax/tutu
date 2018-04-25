class SearchesController < ApplicationController
  before_action :set_stations, only: [:create]
  before_action :set_user

  def show
    
  end

  def create
   
   @routes = RailwayStation.select_routes(@base_station, @end_station) 
   
   render :show
 
  end

  private  

  def set_stations
   @base_station = RailwayStation.find(params[:base_station_id])
   @end_station = RailwayStation.find(params[:end_station_id])
  end

  def set_user
   if user_signed_in?
     @user ||= current_user
   else
     @user = User.first
   end
  end
end
