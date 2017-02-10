module ApplicationHelper
	# return a full title, per page, static title if none exists
  def full_title(page_title = '')
    base_title = "JR's Perfomance"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end