require('pry')

module P2Human

end

module P2Bot

end

class RockPaperScissors
  
  def initialize()
    @win_ray = ["rock", "paper", "scissors", "rock"]
    @scoreboard = [0,0,0]
    @mode = nil
  end

  #def p1_input=(p1_input)
  #def p2_input=(p2_input)
  
  def shoot(p1_input,p2_input)
    if p1_input == p2_input
      "Tie!"
    else
      for i in [0,1,2] do
        # compares whether either player input are directly adjacent in array,
        # element directly to the right (i + 1) wins.
        if (p1_input == @win_ray[i] || p2_input == @win_ray[i]) && \
          (p1_input == @win_ray[i+1] || p2_input == @win_ray[i+1])
          return @win_ray[i+1] + " beats " + @win_ray[i] + "!"
        end
      end
    end
  end

  def mode=(mode)
    puts "play against a friend, or your future AI overlord? [pvp/bot]"
    @mode = mode
    if @mode == "pvp"
      include P2Human
    elsif @mode == "bot"
      include P2Bot
    else
      puts "you dare toy with me? I will teach you respect ... AND FEAR"
      include P2Bot
      @mode = "bot"
    end
  end
end