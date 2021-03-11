class MessageBroadcastJob < ApplicationJob
  queue_as :messages

  #serialize the message to be handled by React
  #broadcast of the serialized message via ActionCable
  #@params: message_id [ID] The id of a given message
  #@return: nil
  def perform(message_id)
    message = Message.find_by(id: message_id)

    if message
      serialized_message = MessagesSerializer.new(message).as_json
      ActionCable.server.broadcast("message_rooms_#{message.message_room_id}_channel", {type: 'test_message', data: serialized_message})
    else
      puts("Message id: #{message_id} not found!")
    end
  end

end
