class User < ApplicationRecord
  has_many :posts
  has_one :address
  has_and_belongs_to_many :events
  has_many :enrollments
  has_many :games, through: :enrollments
  has_one :purse
  has_one :payment_history, through: :purse
  has_many :comments, as: :commentable
  validates :name, :username, :email, presence:true
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "name is not valid." }
  validates :username, format: { with: /\A\w.+\z/, message: "Enter user name in form of 'user1234'."}
  validates :email, format: { with: /\A[\w.+-]+@\w+\.\w+\z/, message: "Enter correct email format." }, uniqueness: true
  validates :gender, inclusion: { in: %w(male female other), message: "Not valid gender."}
  validates :name, length: { minimum: 4, maximum:10}
  validates :ph_no, numericality: { only_integer: true}
end
