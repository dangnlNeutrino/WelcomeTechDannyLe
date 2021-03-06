class MessageRoomDecorator < Draper::Decorator
  	delegate_all

	# Define presentation-specific methods here. Helpers are accessed through
	# `helpers` (aka `h`). You can override attributes, for example:
	#

	#get the time of creation
	#@params: Nil
	#@returns: The time when the object was created
	def created_at
	  helpers.content_tag :span, class: 'time' do
	    return object.created_at.strftime("%a %m/%d/%y")
	  end
	end

	#grab the owner the object
	#@params: Nil
	#@returns: concatinated string by first and last name
	def owner
		return object.user.email
	end

	#grab the owner the object
	#@params: Nil
	#@returns: concatinated string by first and last name
	def get_room_name
		return object.room_name
	end

end
