class RenamimgPlayersTable < ActiveRecord::Migration[5.2]
  def change
    rename_table('players','gamer')
  end
end
