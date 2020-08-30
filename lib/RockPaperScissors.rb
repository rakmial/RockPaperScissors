require('pry')

module P2Human

end

module P2Bot

end

class RockPaperScissors
  
  def initialize()
    @win_ray = ["rock", "paper", "scissors", "rock"]
    @scoreboard = [0,0]
    @mode = getmode()
    
  end
  #def p1_input=(p1_input)
  
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

  def get_mode=(get_mode)
    # get_mode writer method allows for testing and called from script
    # with gets.chomp fed to interface
    puts "play against a friend, or your future AI overlord? [pvp/bot]"
    @get_mode = get_mode
    if @get_mode == "pvp"
      include P2Human
    elsif @get_mode == "bot"
      include P2Bot
    else
      puts "you dare toy with me? I will teach you respect ... AND FEAR"
      include P2Bot
    end
end