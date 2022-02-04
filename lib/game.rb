# class Game 
#   attr_reader :player, :player_choice 

#   def initialize(player)
#     @player = [player]
#   end

#   def RockPaperScissors
#     rps = ["Rock", "Paper", "Scissors"]
#     @cpu = rps.sample
#   end


#   def winner?(player_choice)
#     @player_choice = player_choice
#     if @player_choice == @cpu
#       puts "It's a draw"
#     elsif @player_choice == "rock" and @cpu == "scissors"
#       puts "#{@player[0].name} wins!"  
#     elsif @player_choice == "paper" and @cpu == "rock"
#       puts "#{@player[0].name} wins!"
#     elsif @player_choice == "scissors" and @cpu == "paper"
#       puts "#{@player[0].name} wins!"
#     elsif @player_choice == "rock" and @cpu == "paper"
#       puts "CPU wins"
#     elsif @player_choice == "paper" and @cpu == "scissors"
#       puts "CPU wins"
#     elsif @player_choice == "scissors" and @cpu == "rock"
#       puts "CPU wins"
#     end 
#   end
# end