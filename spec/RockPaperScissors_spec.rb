require('rspec')
require('RockPaperScissors')

describe(RockPaperScissors) do
  it('returns "Tie!" when rock vs. rock') do
    expect(RockPaperScissors.new.shoot("rock","rock")).to(eq("Tie!"))
  end
  it('returns "Paper beats Rock!" when rock vs paper') do
    expect(RockPaperScissors.new.shoot("rock","paper")).to(eq("Paper beats Rock!"))
  end
end