require('pry')

class RockPaperScissors
  def initialize()
    @win_ray = ["rock", "paper", "scissors", "rock"]
  end
  #def p1_input=(p1_input)
  def shoot(p1_input,p2_input)
    if p1_input == p2_input
      "Tie!"
    else
      for i in [0,1,2] do
        if (p1_input == @win_ray[i] || p2_input == @win_ray[i]) && \
          (p1_input == @win_ray[i+1] || p2_input == @win_ray[i+1])
          return @win_ray[i+1] + " beats " + @win_ray[i] + "!"
        end
      end
    end
  end
end