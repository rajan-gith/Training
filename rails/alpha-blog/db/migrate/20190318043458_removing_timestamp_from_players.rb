class RemovingTimestampFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_timestamps(:players)
  end
end
