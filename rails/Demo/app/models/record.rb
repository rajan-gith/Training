class Record < ApplicationRecord
  enum privacy: { personal: 1, professional: 2, publicly: 3 }
  belongs_to :agent, class_name: "Employee", foreign_key: "agent_id"
  belongs_to :super_visor, class_name: "Employee", foreign_key: "super_visor_id"
end
