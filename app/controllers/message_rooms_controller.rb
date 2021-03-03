class MessageRoomsController < ApplicationController

	def index
		#get all the message rooms and pass them into the Draper decorator
		#this remove the needs to write subclasses
		#inherit all methods defined in the MessageRoomDecorator decorator\
		#@params: Nil
		#@return: Decorator-modified message rooms
		@message_rooms = MessageRoomDecorator.decorate_collection(MessageRoom.all)
	end

	#get a specfic 
	def show
		@message_room = MessageRoom.find(params[:room_name])
		@json = MessageRoomSerializer.new(@message_room).as_json
	end

	def new
		@message_room = MessageRoom.new
	end

	def create
		@message_room = current_user.message_rooms.new(room_params)
		if @message_room.save
			flash[:success] = "Successuflly created new message room"
			redirect_to message_room_path
		else
			render 'new'
		end
	end

	private

		def room_params
			params.require(:message_room).permit(:room_name)
		end
end
