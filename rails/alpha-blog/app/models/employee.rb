class Employee < ApplicationRecord
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", foreign_key: "manager_id", optional: true
  # validates :manager_id, numericality: { only_integer: true, allow_nil: true}
  # validates :manager, numericality: { only_integer: false, allow_nil: true}
end
