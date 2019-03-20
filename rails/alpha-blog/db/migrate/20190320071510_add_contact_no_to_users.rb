class AddContactNoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :ph_no, :string, limit:10)
  end
end
