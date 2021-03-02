class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #user will have 1 or more message room(s)
  has_many :message_rooms, dependent: :destroy
  #user will have messages created during message sessions
  has_many :messages, dependent: :destroy
end
