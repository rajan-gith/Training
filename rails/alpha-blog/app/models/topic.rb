class Topic < ApplicationRecord
  validates :title, length: { minimum:5, allow_nil:false, message: "title can't be nill or less than 5" }
  before_validation :ensure_topic_is_there

  def ensure_topic_is_there
    if title.nil?
      self.title = "assigned form callback"
    end
  end
  before_create do  # this before_create fires on create operation only
    self.title = self.title.capitalize
  end

  before_save do # this before_save triggers on update and create both operations
    self.title = self.title.capitalize
  end
  after_initialize do
    puts "successfully initialized"
  end

  after_find do
    puts "successfully found"
  end

  before_destroy do
    puts "you are destorying record"
  end

  after_save do
    puts "you have updated #{self.title} "
  end
end
