module ApplicationHelper

  # Returns the full title on a per-page basis.
 def full_title(page_title = '')
   base_title = "The Chippewa Valleys Rideshare"
   if page_title.empty?
     base_title
   else
     page_title + " | " + base_title
   end
 end
  def yesNoBool(boolean)
    boolean ? 'Yes' : 'No'
  end
end
