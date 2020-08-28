require('rspec')
require('RockPaperScissors')

describe(RockPaperScissors) do
  it('returns "Tie!" when rock vs. rock') do
    expect(RockPaperScissors.new.shoot("rock","rock")).to(eq("Tie!"))
  end
  it('correctly returns "x beats y" for any combination of rock, paper, or scissors') do
    expect(RockPaperScissors.new.shoot("rock","paper")).to(eq("paper beats rock!"))
    expect(RockPaperScissors.new.shoot("paper","rock")).to(eq("paper beats rock!"))
    expect(RockPaperScissors.new.shoot("paper","scissors")).to(eq("scissors beats paper!"))
    expect(RockPaperScissors.new.shoot("scissors","paper")).to(eq("scissors beats paper!"))
    expect(RockPaperScissors.new.shoot("rock","scissors")).to(eq("rock beats scissors!"))
    expect(RockPaperScissors.new.shoot("scissors","rock")).to(eq("rock beats scissors!"))
  end
end