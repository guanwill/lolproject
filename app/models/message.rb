class Message < ActiveRecord::Base
   belongs_to :conversation
   belongs_to :account
   validates_presence_of :body, :conversation_id, :account_id

   scope :unread, -> { where(:read => false) }

   def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
   end

end
