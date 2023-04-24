def update_arr(array, bottom, top)
  bottom.reverse.map.with_index do |num, idx|
    if top.reverse[idx]
      num + top.reverse[idx]
    else
      num
    end
  end.reverse
end

def split_and_add(arr, n)
  until n == 0
    return arr if arr.size == 1
    arr.size.odd? ? middle = arr.size/2 : middle = arr.size/2

    top = arr[0..middle - 1]
    bottom = arr[middle..-1]

    arr = update_arr(arr, bottom, top)
    n -= 1
  end
  arr
end

# Top Codewar

def split_and_add(arr, n)
  n.times {
    half = arr.size / 2
    arr = arr[half..-1].zip([0] * (arr.size % 2) + arr[0...half]).map { |a, b| a+b }
  }
  arr
end

p split_and_add([1, 2, 5, 7, 2, 3, 5, 7, 8], 1) == [2, 4, 7, 12, 15]
p split_and_add([4, 2, 5, 3, 2, 5, 7], 2) == [10, 18]