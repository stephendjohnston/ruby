def buy_fruit(list)
  list.each_with_object([]) do |(fruit, occurence), arr|
    occurence.times do 
      arr << fruit 
    end
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
