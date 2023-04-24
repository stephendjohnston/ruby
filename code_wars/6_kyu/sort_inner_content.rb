#Srot the inner ctnnoet in dsnnieedcg oredr

# You have to sort the inner content of every word of a string in descending order.
# The inner content is the content of a word without first and the last char.

# Some examples:

# "sort the inner content in descending order" -> "srot the inner ctonnet in dsnnieedcg oredr"
# "wait for me" -> "wiat for me"
# "this kata is easy" -> "tihs ktaa is esay"
# The string will never be null and will never be empty.
# It will contain only lowercase-letters and whitespaces.

=begin
take a string sort the inner letters of each word in descending order and return as a string

inputs: string
outputs: string with inner contents sorted

rules: string will never be empty
- will only contain lower case letters and whitespaces

algorithm:
- split the string into an array
- initialize sorted array
- iterate through array of strings
  - take each word at index 1..-2 and sort the contents
  - push those values into the sorted array
  

=end

def sort_the_inner_content(string)
  result = string.split.map do |word|
    if word.size < 4
      word 
    else
      word[0] + word[1..-2].chars.sort.reverse.join + word[-1]
    end
  end
  result.join(' ')
end

p sort_the_inner_content("sort the inner content in descending order") == "srot the inner ctonnet in dsnnieedcg oredr"
p sort_the_inner_content("wait for me") == "wiat for me"
p sort_the_inner_content("this kata is easy") == "tihs ktaa is esay"
