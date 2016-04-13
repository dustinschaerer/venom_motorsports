class AddSupportingImagesToBarnFinds < ActiveRecord::Migration
  def change
    add_column :barn_finds, :supporting_images, :json
  end
end
