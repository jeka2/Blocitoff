module ItemsHelper
  def time_left(expire_time)
    if Time.now.to_f <= expire_time
      "#{distance_of_time_in_words(Time.now, expire_time)} left to complete"
    else
      "The task has expired"
    end
  end
end
