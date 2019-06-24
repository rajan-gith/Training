class Employee < ApplicationRecord
  has_many :super_visor_records, class_name: "Record", foreign_key: "super_visor_id"
  has_many :agent_records, class_name: "Record", foreign_key: "agent_id"
  belongs_to :role
end
