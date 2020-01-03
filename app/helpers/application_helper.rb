module ApplicationHelper

  def full_title(page_name = "")
    base_title = "AttendanceApp"
    if page_name.empty?
      base_title
    else
      page_name + " | " + base_title
    end
  end
  
  def date_color
    if day.worked_on.wday == 6
      font color = "Blue", $days_of_the_week[day.worked_on.wday]
    elsif day.worked_on.wday == 0
      font color = "Red", $days_of_the_week[day.worked_on.wday]
    else
      $days_of_the_week[day.worked_on.wday]
    end
  end
      
end