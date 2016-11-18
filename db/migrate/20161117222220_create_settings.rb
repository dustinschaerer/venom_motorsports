class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.text :title
      t.text :subtitle
      t.text :description
      t.text :section_title
      t.text :projects_title
      t.string :main_image_url

      t.timestamps null: false
    end
  end
end
