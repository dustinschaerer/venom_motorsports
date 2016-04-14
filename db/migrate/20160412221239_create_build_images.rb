class CreateBuildImages < ActiveRecord::Migration
  def change
    create_table :build_images do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end
