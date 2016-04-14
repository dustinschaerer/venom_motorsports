class Build < ActiveRecord::Base
  belongs_to :admin_user
  # has_many :build_images
  # accepts_nested_attributes_for :build_images, allow_destroy: true
  extend FriendlyId
  friendly_id :slug, use: :slugged
  mount_uploader :article_image, ArticleImageUploader
end
