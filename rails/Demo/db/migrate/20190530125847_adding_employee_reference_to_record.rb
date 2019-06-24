class AddingEmployeeReferenceToRecord < ActiveRecord::Migration[5.2]
  def change
    add_reference :records, :agent
    add_reference :records, :super_visor
  end
end
