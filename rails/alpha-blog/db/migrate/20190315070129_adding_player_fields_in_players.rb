class AddingPlayerFieldsInPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column(:players, :game_name, :string, null: false)
  end
end
