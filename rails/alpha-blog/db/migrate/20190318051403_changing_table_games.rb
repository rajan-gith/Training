class ChangingTableGames < ActiveRecord::Migration[5.2]
  def change
    change_table(:games) do |t|
      t.remove :coach_name
      t.integer :random
    end
  end
end
