class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendance_records
  has_many :attendees, class_name: "User", :through => :attendance_records
end
