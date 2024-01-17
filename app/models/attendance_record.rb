class AttendanceRecord < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
  validates_uniqueness_of :attended_event, scope: [:attendee]
end