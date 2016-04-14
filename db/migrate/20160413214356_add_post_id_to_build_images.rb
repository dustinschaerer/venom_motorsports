class AddPostIdToBuildImages < ActiveRecord::Migration
  def change
    add_reference :build_images, :post, index: true, foreign_key: true
  end
end
