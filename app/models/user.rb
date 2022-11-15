class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, uniqueness: true
  #https://github.com/heartcombo/devise/wiki/How-To:-Allow-users-to-sign-in-with-something-other-than-their-email-address
  #for troubleshooting username info
  # has_many friends,
  # friends belong to :user
end
