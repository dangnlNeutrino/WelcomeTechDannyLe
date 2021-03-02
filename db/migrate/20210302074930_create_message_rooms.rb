class CreateMessageRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :message_rooms do |t|
    	t.string :room_name
    	t.references :user, foreign_key: true
      	t.timestamps
    end
  end
end
