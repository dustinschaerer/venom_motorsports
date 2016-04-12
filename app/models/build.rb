class Build < ActiveRecord::Base
  belongs_to :admin_user
  extend FriendlyId
  friendly_id :slug, use: :slugged
  mount_uploader :article_image, ArticleImageUploader
end
