module NotificationsHelper


  def notifications

    # Join the message and conversations table so you can query from both tables
    # Find me all the messages that are in conversations that I either started, or I was as recipient of.
    # Find all the unread messages and count them.

    @messages = Message.joins(:conversation)
      .where('conversations.recipient_id = ? OR conversations.sender_id = ?', current_user.id, current_user.id).where('account_id != ?', current_user.id).where(read: false).count


  end



end
