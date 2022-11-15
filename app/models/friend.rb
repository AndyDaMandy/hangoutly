class Friend < ApplicationRecord
  belongs_to :original_user, class_name "User"
  belongs_to :friend_list
end
