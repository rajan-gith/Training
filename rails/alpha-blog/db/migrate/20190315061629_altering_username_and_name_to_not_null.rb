class AlteringUsernameAndNameToNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:users, :username, false )
    change_column_null(:users, :name, false )
  end
end
