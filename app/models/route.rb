class Route < ActiveRecord::Base
   validates :name, presence: true
   validate :stations_count

   has_many :trains
   has_many :railway_stations_routes
   has_many :railway_stations, through: :railway_stations_routes
   before_validation :set_name
   
  def update_station_number(station, number)
      railway_stations_routes.find_by(railway_station_id: station.id.to_s).update(station_number: number)
  end


   private

    def set_name
      self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}"
    end

     def stations_count
      if railway_stations.size < 2
        errors.add(:base, "Route should contain at least 2 stations")
      end
    end

    

end
