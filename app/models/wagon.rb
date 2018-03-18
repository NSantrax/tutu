class Wagon < ActiveRecord::Base
   
        
	validates :number, presence: true
        validates :number, uniqueness:{ scope: :train_id }
        validates :low_place, :side_low_place,:side_top_place,:sit_place, :top_place, presence: true
        belongs_to  :train, optional: true

        TYPE_WAGON = %w[CoupeWagon PlackartWagon SvWagon SitWagon]
        PLACE = [:low_place, :top_place, :side_low_place, :side_top_place, :sit_place]

   TYPE_WAGON.each do |type|
     name = type.downcase.sub('wagon', '')
     scope name.to_sym, -> { where(type: type)}
   end   
     
   def place_total
     place_total = 0
     PLACE.each do |place|
       place_total += self.send(place) if self.send(place)    
     end
     place_total
   end
        
end 
