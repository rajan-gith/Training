class Topic < ApplicationRecord
  validates :title, length: { minimum:5, allow_nil:false, message: "title can't be nill or less than 5" }
end
