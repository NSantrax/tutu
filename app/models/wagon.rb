class Wagon < ApplicationRecord
	validates :number, presence: true
        validates :wagon_type, presence: true
        validates :low_place, presence: true
        validates :top_place, presence: true


        belongs_to  :train
end
