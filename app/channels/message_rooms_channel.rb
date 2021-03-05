class MessageRoomsChannel < ApplicationCable::Channel

  #if user joins a channel, they will be automatically 
  #subscribed to that channel
  #route broadcasting to the subscriber via stream
  def subscribed
    stream_from "message_rooms_#{params['message_room_id']}_channel"
  end

  #Auto unsubscribe from channel
  #when user leave that channel
  def unsubscribed
    stop_all_streams
  end

  #send message to other users in message room
  def send_message(data)
    message = current_user.messages.create(body: data['body'], message_room_id: data['message_room_id'])
    if message.errors.present?
      transmit({type: 'errors', data: message.errors.full_messages})
    else
      MessageBroadcastJob.perform_later(message.id)
    end
  end
end
