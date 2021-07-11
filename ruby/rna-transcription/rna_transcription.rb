class Complement
  BEAUTIFUL_HASH = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(dna)
    BEAUTIFUL_HASH[dna]
  end
end
