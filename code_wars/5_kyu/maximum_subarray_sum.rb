def max_sequence(array)
  return 0 if array.empty? || array.all? {|num| num < 0 }
  start_index = 0
  max_sum = 0

  loop do                             # 2 loops are needed:the outer loop allows us to start each sequence at each index in the array
  end_index = -1

    loop do                           # the inner loop allows us to try each subsequent sequence of numbers
      current_sum = array[start_index..end_index].sum     # first iteration: finds the sum at index 0 to index -1
      max_sum = current_sum if current_sum > max_sum      # max_sum will be reassigned to current_sum if the current sequence of numbers are greatetr than previous sequence of numbers
      end_index -= 1                                      # this will shrink the sequence by 1 each pass of the loop
      break if end_index <= -array.size - 1               # the loop will break if end index is less than the array.size - 1 because -4 <= -3 => true
    end

    start_index += 1                                      # this keeps track of the start of each sequence
    break if start_index >= array.size
  end

  max_sum
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([9, 2, 12, -3]) == 23
p max_sequence([15, -20, 10]) == 15
p max_sequence([-19, 1, -11, -10, -21, -6]) == 1
p max_sequence([-32]) == 0
p max_sequence([90]) == 90
