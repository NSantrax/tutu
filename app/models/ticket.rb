class Ticket < ActiveRecord::Base
 

   belongs_to :user
   belongs_to :base_station, class_name: 'RailwayStation', foreign_key: :base_station_id
   belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id
   belongs_to :train
   
   after_create :send_notification
   after_destroy :send_destroy
   after_update :send_change
   
   def route_name
     "#{base_station.title} - #{end_station.title}"
   end
   
   private
   
   def send_notification
     TicketsMailer.bay_ticket(self.user, self).deliver_now
   end
   
   def send_destroy
     TicketsMailer.del_ticket(self.user, self).deliver_now
   end
   
   def send_change
     TicketsMailer.edit_ticket(self.user, self).deliver_now
   end
   
end
