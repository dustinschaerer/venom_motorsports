class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :title
      t.text :content
      t.date :date_published
      t.boolean :published
      t.references :admin_user, index: true, foreign_key: true
      t.string :slug

      t.timestamps null: false
    end
  end
end
