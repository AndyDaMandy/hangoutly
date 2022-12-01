class HangoutBooking < ApplicationRecord
  belongs_to :hangout
  has_many :attendees, class_name => "User"
end
