class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(limit, multiples = [3, 5])
    result = []

    multiples.each do |num|
      (num..limit - 1).step(num) {|n| result << n }
    end
    result.uniq.sum
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end
end