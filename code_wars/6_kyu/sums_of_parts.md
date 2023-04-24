Code Wars > 6_kyu

---

Sums of Parts
===

### Problem

Let us consider this example (array written in general format):

* ls = [0, 1, 3, 6, 10]  

Its following parts:
* ls = [0, 1, 3, 6, 10]
* ls = [1, 3, 6, 10]
* ls = [3, 6, 10]
* ls = [6, 10]
* ls = [10]
* ls = []  

The corresponding sums are (put together in a list): [20, 20, 19, 16, 10, 0]  
The function parts_sums (or its variants in other languages) will take as parameter a list ls and return a list of the sums of its parts as defined above.

---

### Examples/Test Cases

ls = [1, 2, 3, 4, 5, 6] 
* parts_sums(ls) -> [21, 20, 18, 15, 11, 6, 0]  

ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
* parts_sums(ls) -> [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]

---

### Data Structures

* **inputs**: array of integers
* **outputs**: array of integers

**rules**:
* all output arrays have 0 as the last integer in the array
* some lists can be long, so algorithm must solve efficiently to avoid timeouts

---

### Algorithm

**mental model**: each subsequent value in the output array will be formed by finding the sum of the elements of the array size, decreasing by 1 on each iteration. 

* find the sum of the input array
* initialize an array with 1 element, the sum of the input array
* iterate through the input array
* upon each iteration, subtract the current num from the sum
* add that value to the array of one element
* output the array 

```ruby
def parts_sums(ls)
  sum = ls.sum
  sums = [sum]

  ls.each do |num|
    sum -= num
    sums << sum
  end
  sums
end

# Top Codewar solution

def parts_sums(ls)
  ls.reduce([ls.sum]) { |sums, x| sums << sums.last - x }
end

p parts_sums([0, 1, 3, 6, 10]) == [20, 20, 19, 16, 10, 0]
p parts_sums([1, 2, 3, 4, 5, 6]) == [21, 20, 18, 15, 11, 6, 0]
p parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]) == [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
```
