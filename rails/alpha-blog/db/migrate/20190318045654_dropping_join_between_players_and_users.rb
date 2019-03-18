class DroppingJoinBetweenPlayersAndUsers < ActiveRecord::Migration[5.2]
  def change
    drop_join_table(:players, :users)
  end
end
