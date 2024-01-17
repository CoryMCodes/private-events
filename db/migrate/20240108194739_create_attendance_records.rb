class CreateAttendanceRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :attendance_records do |t|
      t.belongs_to :attendee
      t.belongs_to :attended_event 
      t.timestamps
    end
    add_foreign_key :attendance_records, :users, column: :attendee_id
    add_foreign_key :attendance_records, :events, column: :attended_event_id
  end
end
