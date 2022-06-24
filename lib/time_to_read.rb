def reading_time(amount_of_words)
  words_per_minute = 200
  est_reading_time = amount_of_words / words_per_minute
  if amount_of_words >= words_per_minute
    return "This will take approx. #{est_reading_time} minute(s) to read."
  else amount_of_words < words_per_minute
    return "This will take less than 1 minute to read"
  end
end