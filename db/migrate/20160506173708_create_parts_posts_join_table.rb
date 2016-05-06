class CreatePartsPostsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :parts, :posts do
    end
  end
end
