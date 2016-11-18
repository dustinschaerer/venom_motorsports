class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.text :html
      t.integer :sort

      t.timestamps null: false
    end
  end
end
