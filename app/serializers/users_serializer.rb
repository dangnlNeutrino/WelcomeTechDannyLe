class UsersSerializer < ActiveModel::Serializer
  attributes :id, :get_email

  def get_email
  	return object.email
  end
end
