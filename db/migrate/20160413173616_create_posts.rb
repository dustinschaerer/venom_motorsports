class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :category, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.text :teaser
      t.string :slug
      t.date :published_on
      t.boolean :published
      t.references :admin_user, index: true, foreign_key: true
      t.string :article_image

      t.timestamps null: false
    end
  end
end
