class Train < ActiveRecord::Base
	validates :number, presence: true
        validates :number, numericality: { only_integer:true }
        validates :number, uniqueness: true

	belongs_to :route, optional: true
	belongs_to :current_station, optional: true, class_name: 'RailwayStation', foreign_key: :current_station_id
        has_many :tickets
        has_many  :wagons 
 
    def place_count (type, place)
     place_count = self.wagons.where(type: type).sum(place) 
    end

  
end
