def frequency_filter(track, lower_limit, upper_limit)
  raise 'no frequencies supplied' if track.empty?

  modified_track = []

  track.each do |frequency|
    raise 'input corrupted' if frequency == nil

    frequency = lower_limit if frequency < lower_limit
    frequency = upper_limit if frequency > upper_limit
    modified_track << frequency
  end

  modified_track
end
