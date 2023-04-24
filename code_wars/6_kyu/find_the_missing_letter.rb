=begin
Problem:
Write a method that takes an array of consecutive (increasing) letters as 
input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one 
letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Examples:

["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"

Data Structures:

inputs: array of strings
outputs: string

Algorithm:

- create an array from the first character to the last character
of the input array
- subtract the input array from the new array
- use first method to output the missing letter

=end



def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr).first
end

p find_missing_letter(["a","b","c","d","f"])
p find_missing_letter(["O","Q","R","S"])
