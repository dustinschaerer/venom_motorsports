class AddTeaserToBarnFinds < ActiveRecord::Migration
  def change
    add_column :barn_finds, :teaser, :text
  end
end
