class AddsColumnsToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :label, :string
    add_column :menu_items, :location, :string
    add_reference :menu_items, :menu_item_type, index: true, foreign_key: true
  end
end
