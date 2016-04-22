class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :post, index: true, foreign_key: true
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
