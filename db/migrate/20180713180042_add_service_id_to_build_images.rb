class AddServiceIdToBuildImages < ActiveRecord::Migration
  def change
    add_reference :build_images, :service, index: true, foreign_key: true
  end
end
