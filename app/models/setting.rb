class Setting < ActiveRecord::Base

  mount_uploader :home_image, HomeImageUploader
  validates_presence_of :title, :subtitle, :description, :section_title, :projects_title

end
