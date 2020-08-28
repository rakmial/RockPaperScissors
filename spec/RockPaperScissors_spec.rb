require('rspec')
require('RockPaperScissors')

describe(RockPaperScissors) do
  it('returns "Tie!" when rock vs. rock') do
    expect(RockPaperScissors.new.shoot("rock","rock")).to(eq("Tie!"))
  end
end