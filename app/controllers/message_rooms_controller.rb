class MessageRoomsController < ApplicationController

	#get all the message rooms and pass them into the Draper decorator
	#this remove the needs to write subclasses
	#inherit all methods defined in the MessageRoomDecorator decorator\
	#@params: Nil
	#@return: Decorator-modified message rooms
	def index
		@message_rooms = MessageRoomDecorator.decorate_collection(MessageRoom.all)
	end

	#get a specfic message room based on ID
	#serialized the message room using serializer
	#@params: Nil
	#@return: Nil
	def show
		@message_room = MessageRoom.find(params[:id])
		@json_object = MessageRoomsSerializer.new(@message_room).as_json
	end

	#Create a new message room given a name
	#@params: Nil
	#@return: Nil
	def new
		@message_room = MessageRoom.new
	end

	#Create a new message room given a name
	#@params: Nil
	#@return: Nil
	def create
		@message_room = current_user.message_rooms.new(room_params)
		if @message_room.save
			flash[:success] = "Successuflly created new message room"
			redirect_to message_rooms_path
		else
			render 'new'
		end
	end

	private

		def room_params
			params.require(:message_room).permit(:room_name)
		end
end
