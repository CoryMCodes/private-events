class AddCreatorIdToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :creator_id, :int 
    add_foreign_key :events, :users, column: :creator_id
  end
end
