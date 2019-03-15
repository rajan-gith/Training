class AddingFkAgainInPlayer < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key(:players, :users)
  end
end
