def first_non_repeating_letter(string)
  return string if string.empty?

  non_repeats = string.chars.each_with_object({}) do |letter, hash|
    hash[letter.downcase] = string.downcase.count(letter.downcase)
  end

  non_repeats_index = non_repeats.values.index(1)

  character = non_repeats.keys[non_repeats_index]
  string[character] ? string[character] : string[character.upcase]
end

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('sTress') == 'T'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
