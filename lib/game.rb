require_relative  'player'
class Game
  attr_reader :player1, :player2
  ROCK = {rock: "draw", paper: "lose", scissors: "win", lizard: "win", spock: "lose"}
  PAPER = {rock: "win", paper: "draw", scissors: "lose", lizard: "lose", spock: "win"}
  SCISSORS = {rock: "lose", paper: "win", scissors: "draw", lizard: "win", spock: "lose"}
  SPOCK = {rock: "wins", paper: "lose", scissors: "win", lizard: "lose", spock: "draw"}
  LIZARD = {rock: "lose", paper: "win", scissors: "lose", lizard: "draw", spock: "win"}
  RULES = {rock: ROCK, paper: PAPER, scissors: SCISSORS, lizard: LIZARD, spock: SPOCK}

  def initialize(player1_instance, player2_instance)
    @player1 = player1_instance
    @player2 = player2_instance
  end

  def choice_of_player1(choice)
    @player1.receive_figure(RULES[choice.to_sym])
  end

  def choice_of_player2(choice)
    @player2.receive_figure(@player1.figure[choice.to_sym])
  end

  def self.set_a_game(player1_instance, player2_instance)
      @current_game = Game.new(player1_instance, player2_instance)
   end

   def self.instance_of_game
     @current_game
   end

end
