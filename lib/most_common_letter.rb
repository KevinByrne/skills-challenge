def get_most_common_letter(text)
  p text
  p counter = Hash.new(0)
  p "=========================="
  p text.chars.each {| char | counter[char] += 1 }
  p "=========================="
  p counter.to_a.sort_by { |k, v| p k }[0]
end

get_most_common_letter("the roof, the roof, the roof is on fire!|")