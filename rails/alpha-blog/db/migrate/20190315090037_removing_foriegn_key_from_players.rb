class RemovingForiegnKeyFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key(:players, :users)
  end
end
