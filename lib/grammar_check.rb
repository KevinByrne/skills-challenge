def grammar_check(text)

  is_it_capitalized = text[0] == text[0].upcase
  last_character_check = [".", "!", "?"].include? text[-1]
  if is_it_capitalized && last_character_check
    return true
  else
    return false
  end

end  