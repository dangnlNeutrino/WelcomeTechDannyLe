class MessageRoomDecorator < Draper::Decorator
	#Automatically delegates instance methods to the source object
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

	#get the owner the message room object
	#@params: Nil
	#@returns: the email of the owner of the message room 
	def owner
		return object.user.email
	end

	#get the name of the message room the object
	#@params: Nil
	#@returns room_name [String]: the name of the given message room
	def get_room_name
		return object.room_name
	end

end
