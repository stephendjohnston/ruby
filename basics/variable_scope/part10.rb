a = 7
array = [1, 2, 3]

def my_value(ary, a)
  ary.each do |b|
    a += b
  end
end

my_value(array, a)
puts a