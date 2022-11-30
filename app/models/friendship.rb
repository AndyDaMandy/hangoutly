class Friendship < ApplicationRecord
    belongs_to :user
    belongs_too :friend, :class_name => "User"
end
