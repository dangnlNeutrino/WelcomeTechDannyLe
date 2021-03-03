class UsersSerializer < ActiveModel::Serializer
  attributes :id. :full_name

  def get_full_name
  	return object.first_name + " " + object.last_name
  end
end
