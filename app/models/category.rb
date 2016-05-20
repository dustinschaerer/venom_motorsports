class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: :slugged
  has_many :posts

  validates_presence_of :name #, :sort, :slug
end
