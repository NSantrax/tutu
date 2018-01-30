class Train < ApplicationRecord
	validates :number, presence: true

	belongs_to :route
	belongs_to :railway_station
end
