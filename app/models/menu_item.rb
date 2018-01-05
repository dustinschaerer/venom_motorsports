class MenuItem < ActiveRecord::Base

  belongs_to :menu_item_type
  belongs_to :parent, class_name: "MenuItem", foreign_key: "parent_id"
  has_many :children, class_name: "MenuItem", foreign_key: "parent_id"

  validates :menu_item_type_id, presence: true
  validates :label, presence: true
  validates :location, presence: true
  validates :sort, presence: true
  validates :parent_id, presence: true, if: :is_dropdown_item?

  def is_dropdown_item?
    (menu_item_type_id == 3)
  end

end
