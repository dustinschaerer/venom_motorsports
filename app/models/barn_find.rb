class BarnFind < ActiveRecord::Base
  belongs_to :admin_user
  extend FriendlyId
  friendly_id :slug, use: :slugged
  mount_uploader :article_image, ArticleImageUploader
  # mount_uploaders :supporting_images, ArticleImageUploader
end
