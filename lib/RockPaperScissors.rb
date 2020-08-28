require('pry')

class RockPaperScissors
  def initialize()
    @win_ray = ["rock", "paper", "scissors", "rock"]
  end
  #def p1_input=(p1_input)
  def shoot(p1_input,p2_input)
    if p1_input == p2_input
      "Tie!"
    end
  end
end