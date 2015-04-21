require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do

  # Letter 'a' gives a score of 1.
  it("returns a scrabble score for a letter") do
    expect("a".scrabble_score()).to(eq(1))
  end

  # Letter 'q' gives a score of 10.
  it("returns a scrabble score for the letter q") do
    expect("q".scrabble_score()).to(eq(10))
  end

  # Calculates the score of a full word
  it("Calculates the score of a full word") do
    expect("Hash".scrabble_score()).to(eq(10))
  end

end
