require('rspec')
require('word_count')

  describe('String#tally') do
    it("counts specified word in a string and returns an integer value") do
      expect(("I love Jimmy because Jimmy is my dog!").tally("Jimmy")).to(eq(2))
      end
    end
