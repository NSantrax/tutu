class Train < ActiveRecord::Base
	#validates :number, presence: true

	belongs_to :route
	belongs_to :railway_station
        has_many :tickets
end
