require_relative  'player'
class Game
  attr_reader :player1, :player2
  ROCK = {rock: "tied", paper: "lost", scissors: "won", lizard: "won", spock: "lost"}
  PAPER = {rock: "won", paper: "tied", scissors: "lost", lizard: "lost", spock: "won"}
  SCISSORS = {rock: "lost", paper: "won", scissors: "tied", lizard: "won", spock: "lost"}
  SPOCK = {rock: "won", paper: "lost", scissors: "won", lizard: "lost", spock: "tied"}
  LIZARD = {rock: "lost", paper: "won", scissors: "lost", lizard: "tied", spock: "won"}
  RULES = {rock: ROCK, paper: PAPER, scissors: SCISSORS, lizard: LIZARD, spock: SPOCK}

  def initialize(player1_instance, player2_instance)
    @player1 = player1_instance
    @player2 = player2_instance
  end

  def choice_of_player1(choice)
    @player1.receive_figure(choice)
  end

  def choice_of_player2(choice = ["rock", "paper", "scissors", "lizard", "spock"][rand(0..4)])
    @player2.receive_figure(choice)
  end

  def self.set_a_game(player1_instance, player2_instance)
      @current_game = Game.new(player1_instance, player2_instance)
   end

   def self.instance_of_game
     @current_game
   end

   def player1_status
     (RULES[(@player1.figure).to_sym])[(@player2.figure).to_sym]
   end
end
