class Trinary
  attr_reader :trinary
  BASE = 3

  def initialize(trinary)
    @trinary = trinary =~ /[^0-2]/ ? 0 : trinary.chars.reverse
  end

  def to_decimal
    return trinary if trinary == 0
    decimal = 0

    trinary.each_with_index do |num, idx|
      decimal += num.to_i*BASE**idx
    end
    decimal
  end
end