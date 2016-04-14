class BuildImage < ActiveRecord::Base
  belongs_to :post
  mount_uploader :image, ArticleImageUploader
end
