class AddingNumbersOfPlayersToTeamModel < ActiveRecord::Migration[5.2]
  def change
    add_column(:teams, :players_count, :integer)
  end
end
