class User < ApplicationRecord
  attr_accessor :image_base
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

  private
    def parse_image
      image = Paperclip.io_adapters.for(image_base)
      image.original_filename = "file.jpg"
      self.picture = image
    end
end
