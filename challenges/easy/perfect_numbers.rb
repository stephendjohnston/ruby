class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0

    total = (1..number - 1).select {|num| number % num == 0}.sum

    case
    when total == number then 'perfect'
    when total < number then 'deficient'
    when total > number then 'abundant'
    end
  end
end