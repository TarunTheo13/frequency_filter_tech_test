def frequency_filter(track, lower_limit, upper_limit)
  modified_track = []

  track.each do |frequency|
    frequency = lower_limit if frequency < lower_limit
    frequency = upper_limit if frequency > upper_limit
    modified_track << frequency
  end

  modified_track
end
