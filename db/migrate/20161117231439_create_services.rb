class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.string :link_text
      t.string :link_destination
      t.integer :sort

      t.timestamps null: false
    end
  end
end
