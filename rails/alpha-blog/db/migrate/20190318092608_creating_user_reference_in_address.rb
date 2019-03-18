class CreatingUserReferenceInAddress < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :addresses, :users
  end
end
