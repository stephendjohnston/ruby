class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    short, long = [strand, other_strand].sort_by(&:size)

    distance = 0

    short.chars.each_with_index do |char, index|
      distance += 1 if char != long[index]
    end
    distance
  end
end