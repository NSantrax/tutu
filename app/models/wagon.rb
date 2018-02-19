class Wagon < ApplicationRecord

        
	validates :number, :wagon_type, :low_place, :top_place, presence: true
        validates :number, :low_place, :top_place, numericality: { only_integer:true }

        belongs_to  :train, optional: true 
end
