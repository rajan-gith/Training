class Photo < ApplicationRecord
  has_attached_file :image, styles: { thumb: ["64x64#", :jpg] }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

end
