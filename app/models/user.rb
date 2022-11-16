class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, uniqueness: true
  has_and_belongs_to_many :friendships,
      class_name: "User", 
      join_table:  :friendships, 
      foreign_key: :user_id, 
      association_foreign_key: :friend_user_id
  #https://github.com/heartcombo/devise/wiki/How-To:-Allow-users-to-sign-in-with-something-other-than-their-email-address
  #for troubleshooting username info
  # has_many friends,
  # friends belong to :user
end
