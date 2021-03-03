class MessageRoomsSerializer < ActiveModel::Serializer
  attributes :room_name, :title
  has_many :messages, serializer: MessagesSerializer
end
