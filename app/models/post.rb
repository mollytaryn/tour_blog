class Post < ActiveRecord::Base

  def day
   start_day = Time.parse("2015-09-13 00:00:01").to_i
   created_at = self.created_at.to_i
   post_day = ((created_at - start_day) / (60 * 60 * 24)) + 1
   return "Day #{post_day}"
  end


end
