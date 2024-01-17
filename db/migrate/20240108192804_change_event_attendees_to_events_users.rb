class ChangeEventAttendeesToEventsUsers < ActiveRecord::Migration[7.1]
  def change
    rename_table :event_attendees, :users_events
  end
end
