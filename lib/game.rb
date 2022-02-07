# this class stores outcomes and weapons, 
# inputs are player weapons
# it plays the game and outputs a string based on result
class Game

  attr_reader :player_weapon, :computer

  GAME_OUTCOMES = {
    "rock" => { :rock => :draw, :paper => :lose, :scissors => :win },
    "paper" => { :rock => :win, :paper => :draw, :scissors => :lose },
    "scissors" => { :rock => :lose, :paper => :win, :scissors => :draw }
  }.freeze

  WEAPONS = [:rock, :paper, :scissors].freeze

  def initialize(player_weapon)
    @player_weapon = player_weapon
    @computer = WEAPONS.sample
  end

  def play_game
    if result == :win
      "You won"
    elsif result == :lose
      "The computer beat you"
    else
      "It's a draw"
    end
  end

  private

  def result
    GAME_OUTCOMES[@player_weapon][@computer]
  end

end
