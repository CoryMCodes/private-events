class CreateEventAtendeesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :event_attendees, id: false do |t|
      t.belongs_to :attendee
      t.belongs_to :event 
      t.timestamps
    end
  end
end
