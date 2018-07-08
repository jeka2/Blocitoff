module ApplicationHelper
  def converter(expire_time)
    distance_of_time_in_words(Time.now, expire_time)
  end
end
