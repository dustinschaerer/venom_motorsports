class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
      t.text :first_column
      t.text :second_column
      t.text :third_column
      t.text :links
      t.text :copyright

      t.timestamps null: false
    end
  end
end
