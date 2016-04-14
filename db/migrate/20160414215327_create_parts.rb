class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.string :part_number
      t.integer :amount
      t.text :notes
      t.string :part_image

      t.timestamps null: false
    end
  end
end
