class AddingDefaultNumbersOfPlayersToTeamModel < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:teams, :players_count, 0)
  end
end
