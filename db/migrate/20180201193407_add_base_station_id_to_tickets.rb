class AddBaseStationIdToTickets < ActiveRecord::Migration[5.1]
  def change
     add_belongs_to :tickets, :base_station 
  end
end
