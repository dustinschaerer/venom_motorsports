class Part < ActiveRecord::Base
  mount_uploader :part_image, PartImageUploader
end