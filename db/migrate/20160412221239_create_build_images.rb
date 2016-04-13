class CreateBuildImages < ActiveRecord::Migration
  def change
    create_table :build_images do |t|
      t.references :build, index: true, foreign_key: true
      t.string :image

      t.timestamps null: false
    end
  end
end
