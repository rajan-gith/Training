class NewTableGames < ActiveRecord::Migration[5.2]
  def change
    create_table(:games) do |t|
      t.string :game_name, :coach_name 
    end
  end
end
