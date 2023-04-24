def select(word)
  word.chars.select {|w| (1..9).include?(w.to_i) }
end

def order(words)
 result = words.split.sort_by do |word|
    select(word)
  end
  result.join(' ')
end

p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
p order("") == ""
