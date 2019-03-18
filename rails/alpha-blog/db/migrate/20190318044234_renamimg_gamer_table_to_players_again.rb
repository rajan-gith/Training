class RenamimgGamerTableToPlayersAgain < ActiveRecord::Migration[5.2]
  def change
    rename_table('gamer','players')
  end
end
