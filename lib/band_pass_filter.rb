def frequency_filter(track, lower_limit, upper_limit)
  if track[0] < lower_limit
    track[0] = lower_limit
  elsif track [0] > upper_limit
    track[0] = upper_limit
  end

  track
end
