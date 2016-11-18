class Setting < ActiveRecord::Base

validates_presence_of :title, :subtitle, :description, :section_title, :projects_title, :main_image_url

end
