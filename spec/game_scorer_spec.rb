require('rspec')
require('game_scorer')

describe('GameScorer#beats?') do
  it('judges a single game of rock vs scissors') do
    expect("1".beats?("3")).to(eq(true))
  end
end
