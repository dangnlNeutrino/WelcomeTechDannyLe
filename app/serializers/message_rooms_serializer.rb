class MessageRoomsSerializer < ActiveModel::Serializer
  attributes :id, :get_room_name, :get_owner
  has_many :messages, serializer: MessagesSerializer

  def get_room_name
  	return object.room_name
  end

  def get_owner
  	return User.find(object.user_id).email
  end
end
