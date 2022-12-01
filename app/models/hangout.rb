class Hangout < ApplicationRecord
    belongs_to :creator, class_name => "User"
    has_many :attendees, through: :hangout_booking, source: :hangout
end
