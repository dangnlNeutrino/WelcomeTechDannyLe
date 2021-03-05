class MessageRoom < ApplicationRecord
	#ensure that message rooms are tied to each user
	belongs_to :user
	#tie messsages to the chat rooms they were created in
	has_many :messages, dependent: :destroy
	#make sure each chat room must have a room name, specified by the user
	#validates :room_name, presence: true
end
