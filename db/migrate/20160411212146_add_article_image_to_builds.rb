class AddArticleImageToBuilds < ActiveRecord::Migration
  def change
    add_column :builds, :article_image, :string
  end
end
