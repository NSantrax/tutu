class Wagon < ActiveRecord::Base
   
        
	validates :number, presence: true
        validates :number, uniqueness: true
        validates :low_place, :side_low_place,:side_top_place,:sit_place, :top_place, presence: true
        validates :number_on_train, uniqueness: { scope: :train_id }
        belongs_to  :train, optional: true
        before_validation :set_number

        scope :ordered, -> { order(:number_on_train)}

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

   

   def set_number
     if self.train.wagons.ordered.last.number_on_train.nil?
       self.number_on_train = 1
       else
       self.number_on_train ||= self.train.wagons.ordered.last.number_on_train + 1        
     end
   end
        
end  
