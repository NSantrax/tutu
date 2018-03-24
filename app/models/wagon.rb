class Wagon < ActiveRecord::Base
   
        TYPE_WAGON = %w[CoupeWagon PlackartWagon SvWagon SitWagon]
        PLACE = [:low_place, :top_place, :side_low_place, :side_top_place, :sit_place]
 
	validates :number, presence: true
        validates :number, uniqueness: true
        validates :type, inclusion: { in: TYPE_WAGON, message: "%{type} is not a valid type" }
        validates :low_place, :side_low_place,:side_top_place,:sit_place, :top_place, presence: true
        validates :number_on_train, uniqueness: { scope: :train_id }, allow_blank: true
        belongs_to  :train, optional: true
        before_validation :set_number
       

        
        scope :ordered, -> (train) { train.sort_wagons ? order(number_on_train: :asc) : order(number_on_train: :desc)  }
       
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
      unless self.train.nil?
        self.number_on_train ||= self.train.wagons.maximum('number_on_train').to_i + 1
        else 
          self.number_on_train = nil
      end 
    end

        
end  
