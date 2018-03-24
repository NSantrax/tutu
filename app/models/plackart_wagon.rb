class PlackartWagon < Wagon

   validates :low_place, :top_place, :side_low_place, :side_top_place, numericality: { greater_than_or_equal_to: 0 }
   validates :sit_place, numericality: { equal_to: 0 }
   
        
end 
