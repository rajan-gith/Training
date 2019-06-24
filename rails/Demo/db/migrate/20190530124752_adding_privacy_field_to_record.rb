class AddingPrivacyFieldToRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :privacy, :integer
  end
end
