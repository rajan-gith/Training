class RemovingReferenceFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:players, :user, foreign_key: true)
  end
end
