class PersonValidator < ActiveModel::Validator
  def validate(record)
    if record.name == "Rock"
      record.errors[:base] << "This person is wwe Champion"
    end
  end
end

class User < ApplicationRecord
  validates_with PersonValidator
  has_many :posts, dependent: :nullify
  has_one :address, dependent: :nullify
  has_and_belongs_to_many :events
  has_many :enrollments, dependent: :nullify
  has_many :games, through: :enrollments
  has_one :purse, dependent: :nullify
  has_one :payment_history,dependent: :nullify, through: :purse
  has_many :comments, as: :commentable,dependent: :nullify
  validates :name, :username, :email, presence: { message: "can't be null"}
  validates :name, format: { with: /\A[a-zA-Z\s]+\z/, message: "name is not valid." }
  validates :username, format: { with: /\A\w.+\z/, message: "Enter user name in form of 'user1234'."}
  validates :email, format: { with: /\A[\w.+-]+@\w+\.\w+\z/, message: "Enter correct email format." }, uniqueness: { case_sensitive: false }
  validates :gender, inclusion: { in: %w(male female other), message: "Not valid gender.", allow_nil: true}
  validates :name, length: { minimum: 4, maximum:50}
  validates :ph_no, numericality: { only_integer: true, allow_nil: true}
end
