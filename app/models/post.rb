class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :admin_user
  has_many :videos, dependent: :destroy
  has_many :build_images, inverse_of: :post, dependent: :destroy
  has_and_belongs_to_many :parts
  accepts_nested_attributes_for :build_images, allow_destroy: true
  extend FriendlyId
  friendly_id :slug, use: :slugged
  mount_uploader :article_image, ArticleImageUploader

  validates_presence_of :title, :category_id, :slug
end
