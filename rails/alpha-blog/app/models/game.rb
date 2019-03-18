class Game < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  has_many :comment, as: :commentable
end
