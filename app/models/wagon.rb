class Wagon < ApplicationRecord

        
	validates :number, :wagon_type, :low_place, :top_place, presence: true
        validates :number, :low_place, :top_place, numericality: { only_integer:true }

        belongs_to  :train, optional: true 

        scope :coupe, -> { where(wagon_type: "coupe")}
        scope :plackart, -> { where(wagon_type: "plackart")}

        scope :plackart_top_place, -> { plackart.inject(0){ |result, wagon| result + wagon.top_place} }
        scope :plackart_low_place, -> { plackart.inject(0){ |result, wagon| result + wagon.low_place} }
        scope :coupe_low_place, -> { coupe.inject(0){ |result, wagon| result + wagon.low_place} }
        scope :coupe_top_place, -> { coupe.inject(0){ |result, wagon| result + wagon.top_place} }
        
end 
