class String
  define_method(:tally) do |word|
    self.split()
    .count(word)
  end
end
