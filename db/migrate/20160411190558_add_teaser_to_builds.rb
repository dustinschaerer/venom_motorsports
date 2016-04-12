class AddTeaserToBuilds < ActiveRecord::Migration
  def change
    add_column :builds, :teaser, :text
  end
end
