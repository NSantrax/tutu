class SitWagon < Wagon

   validates :sit_place, numericality: { greater_than_or_equal_to: 0 }
   validates :side_low_place,:side_top_place,:low_place, :top_place, numericality: { equal_to: 0 }
   
end

