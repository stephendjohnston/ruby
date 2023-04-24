=begin
Problem:

For building the encrypted string:
Take every 2nd char from the string, then the other chars, that are not 
every 2nd char, and concat them as new String.
Do this n times!

For both methods:
If the input-string is null or empty return exactly this value!
If n is <= 0 then return the input text.

Examples:

"This is a test!", 1 -> "hsi  etTi sats!"
"This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"

Data Structures:

inputs: string, integer
outputs: string

rules:
- if n <= 0, return input string
- if string is empty, return emptry string
- assume first character of string is an odd numbered character
- include spaces as characters
- doulbe spaces remain as is

in example 1: "This is a test!", take the even numbered chars to get 
"hsi et" then add on the odd numbered chars "Ti sats!" to get one
iteration. repeat the process with the new string n times

Algorithm:

- iterate through the input string
- take every 2nd character (odd indexes and including spaces) and concat them
- if n > 1, repeat process n times

Encrypt Method:
actual iteration
- initialize loop
- initialize variable to set final string
- iterate through array of chars of input string
- if index is even, add char to last half variable
- if index is odd, add char to first half ariable
- add first half to last half and set as value for final return value
- if n is greater than 1 repeat this process
- end loop

Decrypt Method:
- 




=end

def encrypt(text, n)
  final_string = text

  loop do 
    break if n <= 0
    even_chars = ""
    odd_chars = ""

    final_string.chars.each_with_index do |char, idx|
      even_chars += char if idx.even?
      odd_chars += char if idx.odd?
    end
    final_string = odd_chars + even_chars
    n -= 1
  end
  final_string
end

def decrypt(encrypted_text, n)
  return encrypted_text if n <= 0

  n.times do
    midpoint = encrypted_text.length/2
    arr1 = encrypted_text[0...midpoint].chars
    arr2 = encrypted_text[midpoint ..-1].chars
    encrypted_text = arr2.zip(arr1).join
  end
  encrypted_text
end

p encrypt("This is a test!", 0) ==  "This is a test!"
p encrypt("This is a test!", 1) == "hsi  etTi sats!"
p encrypt("This is a test!", 2) == "s eT ashi tist!"
p encrypt("This is a test!", 3) == " Tah itse sits!"
p encrypt("This is a test!", 4) == "This is a test!"
p encrypt("This is a test!", -1) == "This is a test!"
p encrypt("This kata is very interesting!", 1) == "hskt svr neetn!Ti aai eyitrsig"
p decrypt("This is a test!", 0) == "This is a test!"
p decrypt("hsi  etTi sats!", 1) == "This is a test!"
p decrypt("s eT ashi tist!", 2) == "This is a test!"
p decrypt(" Tah itse sits!", 3) == "This is a test!"
p decrypt("This is a test!", 4) == "This is a test!"
p decrypt("This is a test!", -1) == "This is a test!"
p decrypt("hskt svr neetn!Ti aai eyitrsig", 1) == "This kata is very interesting!"
p encrypt("", 0) == ""
p decrypt("", 0) == ""
p encrypt("vpj7 SXvkrtE", 1) == "p7SvrEvj Xkt"
p decrypt("p7SvrEvj Xkt", 1) == "vpj7 SXvkrtE"
