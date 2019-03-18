class DroppingTempTable < ActiveRecord::Migration[5.2]
  def change
    drop_table(:temps)
  end
end
