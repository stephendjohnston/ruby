a = "Xyzzy"

def my_value(b)
  puts b
  b = 'yzzyX'
  puts b
end

my_value(a)
puts a