class Topic < ApplicationRecord
  validates :title, length: { minimum:5, allow_nil:false, message: "title can't be nill or less than 5" }
  before_validation :ensure_topic_is_there

  def ensure_topic_is_there
    if title.nil?
      self.title = "assigned form callback"
    end
  end
end
