class AddServiceIdToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :service, index: true, foreign_key: true
  end
end
