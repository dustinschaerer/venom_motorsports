class Part < ActiveRecord::Base
  mount_uploader :part_image, PartImageUploader
  has_and_belongs_to_many :posts

  validates_presence_of :name
  validates_uniqueness_of :name

end
