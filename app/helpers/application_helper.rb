module ApplicationHelper

  def newhistorics_page_class(join = false)
    @page_class ||= [controller_name, action_name]
    join ? @page_class.join("\s") : @page_class
  end

end

