class Train < ActiveRecord::Base
	validates :number, presence: true
        validates :number, numericality: { only_integer:true }

	belongs_to :route, optional: true
	belongs_to :current_station, optional: true, class_name: 'RailwayStation', foreign_key: :current_station_id
        has_many :tickets
        has_many  :wagons  

    @wagons_coupe = 0 
    @wagons_plackart = 0
    @coupe_low_place = 0
    @coupe_top_place = 0
    @plackart_low_place = 0
    @plackart_top_place = 0
     unless @train.nil?
      @train.wagons.each do |wagon| 
        if wagon.wagon_type == 'coupe' 
           @wagons_coupe +=1         
           @coupe_low_place += wagon.low_place 
           @coupe_top_place += wagon.top_place 
        else
           @wagons_plackart +=1          
           @plackart_low_place += wagon.low_place 
           @plackart_top_place += wagon.top_place 
        end
      end 
    end 
   
end
