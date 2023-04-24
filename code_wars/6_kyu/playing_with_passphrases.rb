ALPHA = ('A'..'Z').to_a
NUMS = (0..9).to_a.map(&:to_s)

def play_pass(str, n)
  result = str.chars.map.with_index do |char, idx|
    if ALPHA.include?(char)
      index = ALPHA.index(char) + n
      index -= 26 if index >= 26
      char = ALPHA[index]
      idx.even? ? char.upcase : char.downcase
    elsif NUMS.include?(char)
      char = 9 - char.to_i
    else
      char
    end
  end
  result.reverse.join
end


p play_pass("I LOVE YOU!!!", 1) == "!!!vPz fWpM J"
p play_pass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2) == 
    "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO"
