class MessagesSerializer < ActiveModel::Serializer
  attributes :id, :body, :written_at, :get_email
  belongs_to :user, serializer: UsersSerializer

  #returns when the serialized message was created
  def written_at
  	return object.created_at.strftime('%H:%M:%S %d %B %Y')
  end

  def get_email
  	return object.user.email
  end
end
