class Book < ApplicationRecord
  belongs_to :author
  has_many :book_copies
  validates :title, :author, presence: true
end
