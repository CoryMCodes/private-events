class ChangeAttendanceRecordColumnNames < ActiveRecord::Migration[7.1]
  def change
    rename_column :attendance_records, :attended_event_id, :event_id 
    rename_column :attendance_records, :attendee_id, :user_id

    remove_foreign_key :attendance_records, :users
    remove_foreign_key :attendance_records, :events

  end
end
