class BuildImage < ActiveRecord::Base
  belongs_to :post, inverse_of: :build_images
  mount_uploader :image, ArticleImageUploader
end
