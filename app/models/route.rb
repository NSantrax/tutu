class Route < ActiveRecord::Base
	validates :name, presence: true

	has_many :trains
end