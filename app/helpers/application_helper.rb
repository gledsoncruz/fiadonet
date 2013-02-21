module ApplicationHelper
 
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
  
  def glyph(*names)
   content_tag :i, nil, :class => names.map{|name| "icon-#{name.to_s.gsub('_','-')}" }
  end
    
end
