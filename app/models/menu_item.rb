class MenuItem < ActiveRecord::Base

  belongs_to :menu_item_type
  belongs_to :parent, class_name: "MenuItem", foreign_key: "parent_id"
  has_many :children, class_name: "MenuItem", foreign_key: "parent_id"

end
