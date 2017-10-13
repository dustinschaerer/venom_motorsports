class Footer < ActiveRecord::Base
  validates_presence_of :first_column, :second_column, :third_column, :links, :copyright
end
