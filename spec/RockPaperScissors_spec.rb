require('rspec')
require('RockPaperScissors')
require('../RockPaperScissors_script')

describe(RockPaperScissors) do
  it('returns "Tie!" when the same inputs are given') do
    expect(RockPaperScissors.new.shoot("rock","rock")).to(eq("Tie!"))
    expect(RockPaperScissors.new.shoot("scissors","scissors")).to(eq("Tie!"))
    expect(RockPaperScissors.new.shoot("paper","paper")).to(eq("Tie!"))
  end
  it('correctly returns "x beats y" for any combination of rock, paper, or scissors') do
    expect(RockPaperScissors.new.shoot("rock","paper")).to(eq("paper beats rock!"))
    expect(RockPaperScissors.new.shoot("paper","rock")).to(eq("paper beats rock!"))
    expect(RockPaperScissors.new.shoot("paper","scissors")).to(eq("scissors beats paper!"))
    expect(RockPaperScissors.new.shoot("scissors","paper")).to(eq("scissors beats paper!"))
    expect(RockPaperScissors.new.shoot("rock","scissors")).to(eq("rock beats scissors!"))
    expect(RockPaperScissors.new.shoot("scissors","rock")).to(eq("rock beats scissors!"))
  end
  it('provides an option of human or bot opponent') do
    bot_test = RockPaperScissors.new
    expect(bot_test.p2_bot?(true)).to(bot_test.ancestors.class.include?("P2Bot"))
  end
end