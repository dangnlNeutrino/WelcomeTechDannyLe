class MessageBroadcastJob < ApplicationJob
  queue_as :messages

  #serialize the message, makes it easier to handle in React
  #@params: message_id [id] The id of a given message
  #@return: broadcast of the serialized message via ActionCable
  def perform(message_id)
    message = Message.find_by(id: message_id)

    if message
      serialized_message = MessagesSerializer.new(message).as_json
      ActionCable.server.broadcast("message_room_#{message.message_room_id}_channel", {type: 'new_message', data: serialized_message})
    else
      puts("message not found with id: #{message_id}")
    end
  end

end
