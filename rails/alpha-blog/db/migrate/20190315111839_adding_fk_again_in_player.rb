class AddingFkAgainInPlayer < ActiveRecord::Migration[5.2]
  def change
    add_reference(:players, :users)
    
  end
end
