class ChangeEventAttendeesToUsersEvents < ActiveRecord::Migration[7.1]
  def change
    rename_table :event_attendees, :events_users
  end
end
