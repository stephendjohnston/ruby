class Octal
  attr_reader :octal

  def initialize(octal)
    @octal = octal =~ /\D|[8-9]/ ? 0 : octal.chars
  end

  def to_decimal
    return octal if octal == 0
    decimal = 0
    power = 0

    octal.reverse_each do |num|
      decimal += num.to_i*8**power
      power += 1
    end
    decimal
  end
end