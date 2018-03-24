class Route < ActiveRecord::Base
   validates :name, presence: true
   validate :stations_count

   has_many :trains
   has_many :railway_stations_routes
   has_many :railway_stations, through: :railway_stations_routes
   before_validation :set_name
   
 
   private

    def set_name
      self.name = "#{self.railway_stations.first.title} - #{self.railway_stations.last.title}"
    end

     def stations_count
      if railway_stations.size < 2
        errors.add(:base, "Route should contain at least 2 stations")
      end
    end

    

end
