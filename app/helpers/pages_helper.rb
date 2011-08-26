module PagesHelper
  def link_to_pages(title, link)
    if user_signed_in? 
      link_to title, edit_page_path(link)
    else
      link_to title, page_path(link)
    end
  end
end
