class SecretHandshake
  ACTIONS = ['wink', 'double blink', 'close your eyes', 'jump']

  def initialize(binary)
    @handshake = []
    @binary = binary.is_a?(String) ? validate(binary) : binary.to_s(2)
  end

  def commands
    return @handshake if @binary == []

    @binary.to_i.digits.each_with_index do |number, idx|
      break if idx >= ACTIONS.size
      number == 0 ? next : @handshake << ACTIONS[idx]
    end
    return_handshake
  end

  private

  def return_handshake
    @binary.size == 5 && @binary[0].to_i == 1 ? @handshake.reverse : @handshake
  end

  def validate(string)
    string.chars.any? { |char| char =~ /[a-z]|[2-9]/i } ? @handshake : string
  end
end
