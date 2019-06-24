class Review < ApplicationRecord
  validates_uniqueness_of :number, scope: [:user, :business]
end
