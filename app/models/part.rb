class Part < ActiveRecord::Base
  mount_uploader :part_image, PartImageUploader
  has_and_belongs_to_many :posts
end
