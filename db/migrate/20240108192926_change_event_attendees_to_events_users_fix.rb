class ChangeEventAttendeesToEventsUsersFix < ActiveRecord::Migration[7.1]
  def change
    rename_table :users_events, :events_users
  end
end
