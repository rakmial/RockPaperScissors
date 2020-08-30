require('rspec')
require('RockPaperScissors')

describe(RockPaperScissors) do
  describe("#shoot") do
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
  end
  describe("#mode=") do
    it('gets input from player to allow two-player mode') do
      p2_test = RockPaperScissors.new
      expect(p2_test.mode=("pvp")).to(p2_test.class.ancestors.include?("P2Human"))
    end
    it('gets input from player to allow player vs bot mode') do
      bot_test = RockPaperScissors.new
      expect(bot_test.mode=("bot")).to(bot_test.class.ancestors.include?("P2Bot"))
    end
  end
end