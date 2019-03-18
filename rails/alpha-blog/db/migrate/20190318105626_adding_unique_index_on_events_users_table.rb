class AddingUniqueIndexOnEventsUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_index :events_users, [:user_id, :event_id], unique: true
    add_index :enrollments, [:user_id, :game_id], unique: true
  end
end
