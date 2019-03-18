class CreatingTempTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:temps) do |t|
      t.string :name, limit:60
      t.integer :luck_no
    end
  end
end
