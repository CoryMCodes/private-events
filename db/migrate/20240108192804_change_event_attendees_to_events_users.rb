class ChangeEventAttendeesToEventsUsers < ActiveRecord::Migration[7.1]
  def change
    rename_table :events_users, :users_events
  end
end
