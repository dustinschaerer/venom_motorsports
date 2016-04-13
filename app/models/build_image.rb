class BuildImage < ActiveRecord::Base
  belongs_to :build
  mount_uploader :image, ArticleImageUploader
end
