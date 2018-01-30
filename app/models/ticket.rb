class Ticket < ActiveRecord::Base
	validates :number, presence: true
end