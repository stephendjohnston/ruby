CONSONANTS = /[^aeiou\W\d]/i

def double_consonants(string)
  doubled = ''
  string.each_char do |char|
    if CONSONANTS =~ char
      doubled << char << char
    else
      doubled << char
    end
  end
  doubled
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
