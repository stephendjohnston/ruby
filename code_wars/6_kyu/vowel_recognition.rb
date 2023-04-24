=begin
take a string and split into all the possible substrings, then count 
the number of times a vowel appears in all of the substrings

inputs: string
outputs: integer (number of vowels)

algorithm:
- split the input string into all possible substrings
  - initialize result array
  - intialize start index = 0
  - split input string using chars
  - 
=end

VOWELS = ('aeiouAEIOU')

def vowel_recognition(input)
  result = []
  start_index = 0

  loop do 
    input.chars.each_with_index do |_, idx|
      result << input[start_index..idx]
    end
    start_index += 1
    break if start_index >= input.size
  end
  result.delete('')

  vowels_count = result.join.chars.map do |char|
    if VOWELS.include?(char)
      VOWELS.count(char)
    else
      0
    end
  end
  vowels_count.sum
end

p vowel_recognition('baceb')
p vowel_recognition("aeiouAEIOU")
p vowel_recognition("bbbb")
p vowel_recognition("aeiou")
