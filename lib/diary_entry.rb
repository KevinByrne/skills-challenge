class DiaryEntry

  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split.size
  end

  def reading_time(wpm)
    est_reading_time = count_words / wpm
    if count_words >= wpm
      return "This will take approx. #{est_reading_time} minutes to read"
    else count_words < wpm
      return "It will take approx. #{est_reading_time} minutes to read this text"
    end
  end

  def reading_chunk(wpm, minutes)
    chunk_of_text = wpm * minutes
    return chunk_of_text
  end
end

