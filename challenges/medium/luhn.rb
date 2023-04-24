class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    @number.digits.map.with_index do |num, idx|
      if idx.odd?
        num * 2 >= 10 ? (num * 2) - 9 : num * 2
      else
        num
      end
    end.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    0.upto(9) do |digit|
      luhn = number * 10 + digit
      return luhn if new(luhn).valid?
    end
  end
end
