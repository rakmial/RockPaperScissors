# English Specification

_Requirements_: Build a rock, papers, scissors game. It can be two-player or against the computer. Write a method that handles different combinations of plays, write specs for all possible combination of plays. Once all specs pass, write a script for a player to play the game.

###_Tests & Functions_ 

1. Comparison array ["rock", "paper", "scissors", "rock"], compare i < i+1 for victory.
  * Test for equality
  * Test for "rock" < "paper" == true
  * Test for "paper" < "scissors" == true
  * Test for "scissors" < "rock" == true

2. Write script that plays the game.

Bonus Round - 

3. Write dumpy ASCII scoreboard visualizer

4. Craft 2 modules that allow ComputerPlayer or HumanPlayer method mixins.
  * 