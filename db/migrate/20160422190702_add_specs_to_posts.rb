class AddSpecsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :specs, :text
  end
end
