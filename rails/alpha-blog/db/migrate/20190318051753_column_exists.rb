class ColumnExists < ActiveRecord::Migration[5.2]
  def change
    column_exists?(:games, :game_name)
    column_exists?(:games, :coach_name)
  end
end
