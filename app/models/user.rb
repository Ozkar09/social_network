class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy

  has_many :sender, class_name: 'Friendship', foreign_key: 'sender_id'
  has_many :receiver, class_name: 'Friendship', foreign_key: 'receiver_id'

end
