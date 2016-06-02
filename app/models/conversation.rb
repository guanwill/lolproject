class Conversation < ActiveRecord::Base
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'Account'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'Account'
  has_many :messages, dependent: :destroy
  validates_uniqueness_of :sender_id, :scope => :recipient_id

  # scope :involving, -> (account) do
  #   where("conversations.sender_id = ? OR conversations.recipient_id = ?", account.id, account.id)
  # end

  scope :between, -> (sender_id,recipient_id) do
    where(
      "conversations.sender_id = ? AND
      conversations.recipient_id = ? OR
      conversations.sender_id = ? AND
      conversations.recipient_id =? ",
      sender_id, recipient_id, recipient_id, sender_id
      )
  end

end
