class MessagesSerializer < ActiveModel::Serializer
  attributes :id, :body, :written_at
  belongs_to :user, serializer: UsersSerializer

  #returns when the serialized message was created
  def wrote_at
  	return object.created_at.strftime('%H:%M:%S %d %B %Y')
  end
end
