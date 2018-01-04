class CreateMenuItemTypes < ActiveRecord::Migration
  def change
    create_table :menu_item_types do |t|
      t.string :name
      t.text :html
      t.integer :sort

      t.timestamps null: false
    end
  end
end
