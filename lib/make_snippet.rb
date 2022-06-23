def make_snippet(string)
  my_words = string.split(" ")
  if my_words.length <= 5
    return my_words
  else
    only_five_words = my_words[0, 5].join(" ")
    return only_five_words + "..."
  end
end