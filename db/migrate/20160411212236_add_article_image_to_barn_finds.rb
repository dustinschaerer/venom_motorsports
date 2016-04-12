class AddArticleImageToBarnFinds < ActiveRecord::Migration
  def change
    add_column :barn_finds, :article_image, :string
  end
end
