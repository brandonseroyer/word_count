class String
  define_method(:tally) do |word|
    self.delete(","".""!""?""%":";").split()
    .count(word)
  end
end
