class AddHomeImageToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :home_image, :string
  end
end
