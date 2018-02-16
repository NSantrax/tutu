class Train < ActiveRecord::Base
	validates :number, presence: true

	belongs_to :route, optional: true
	belongs_to :current_station, optional: true, class_name: 'RailwayStation', foreign_key: :current_station_id
        has_many :tickets, optional: true
        has_many  :wagons, optional: true
end
