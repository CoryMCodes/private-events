class AddColumnsToAttendanceRecords < ActiveRecord::Migration[7.1]
  def change
    add_column :attendance_records, :attendee_id, :int
    add_column :attendance_records, :attended_event_id, :int
  end
end
