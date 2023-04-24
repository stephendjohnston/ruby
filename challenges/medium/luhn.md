##### Ruby Challenges > Medium 2

---

## Luhn Algorithm

**Problem**

The Luhn formula is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers and Canadian Social Insurance Numbers.

The formula verifies a number against its included check digit, which is usually appended to a partial number to generate the full number. This number must pass the following test:

* Counting from rightmost digit (which is the check digit) and moving left, double the value of every second digit.
* For any digits that thus become 10 or more, subtract 9 from the result.
  * 1111 becomes 2121.
  * 8763 becomes 7733 (from 2×6=12 → 12-9=3 and 2×8=16 → 16-9=7).
* Add all these digits together.
  * 1111 becomes 2121 sums as 2+1+2+1 to give a checksum of 6.
  * 8763 becomes 7733, and 7+7+3+3 is 20.

If the total (the checksum) ends in 0 (put another way, if the total modulus 10 is congruent to 0), then the number is valid according to the Luhn formula; else it is not valid. So, 1111 is not valid (as shown above, it comes out to 6), while 8763 is valid (as shown above, it comes out to 20).

Write a program that, given a number

* Can check if it is valid per the Luhn formula. This should treat, for example, "2323 2005 7766 3554" as valid.
* Can return the checksum, or the remainder from using the Luhn method.
* Can add a check digit to make the number valid per the Luhn formula and return the original number plus that digit. This should give "2323 2005 7766 3554" in response to "2323 2005 7766 355".

---

**Examples / Test Cases**

Test number => 2323 2005 7766 3554
* double every 2nd digit starting from the rightmost digit
* sum the number
* if the sum modulus 10 == 0 then the number is valid

Test number => 2323 2005 7766 355
* same steps as above
* if number is invalid, find the number that can be added to make the number valid
* in this case, add 4 to the end to make the number valid

---

**Data Structure:**

_Inputs_

* Integer

_Outputs_

* Array
* Integer

_Rules_

* check if number is valid
  * checksum modulus 10 == 0
* can return the checksum value
* if the number is invalid, add a check digit to make the number valid

---

**Algorithm:**

_Method:_ addends

Return an array with every 2nd digit from the right doubled, and subtracted by 9 if doubling puts the number 10 and above.

* take the input integer and convert to array
* reverse the array
* iterate through the array with map with index
* if the index is odd? double the number.
* if the number doubled is 10 or greater, subtract 9
* reverse the array again to the original order

_Method:_ checksum

return the sum of the return value of addends
* addends.sum

_Method:_ valid?

check to see if the return value of checksum % 10 == 0
* checksum % 10 == 0

_Method:_ create

Change an invalid number to valid by adding an integer to the end of the number. 

* until the number is valid? try adding the digits 0-9 one at a time, starting at 0
* create a new Luhn object with each new number and return that number if valid?

---

**Code:**

```ruby
class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    @number.digits.map.with_index do |num, idx|
      if idx.odd?
        num * 2 >= 10 ? (num * 2) - 9 : num * 2
      else
        num
      end
    end.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    0.upto(9) do |digit|
      luhn = number * 10 + digit
      return luhn if new(luhn).valid?
    end
  end
end
```

