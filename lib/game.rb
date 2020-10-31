class Game
  attr_reader :player1, :player2

  # This is called with Game.create(player1, player2) where paramaters are player objects

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  # that creates @game as an instance of the Class Game
  # As the @game object exists at the same level the below method can see and return it.
  # Therefore we can use it in all our routes by calling @game = Game.instance

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def computer_attack
    ['rock', 'paper', 'scissors'].sample
  end

  def result

    case @player1.pick
      when "rock" 
        return "#{@player1.name} is the winner!" if @player2.pick == "scissors"
      when "paper"
        return "#{@player1.name} is the winner!" if @player2.pick == "rock"
      when "scissors"
        return "#{@player1.name} is the winner!" if @player2.pick == "paper"
    end

    return "It's a draw" if draw?

    return "#{@player2.name} is the winner!"

  end

  private

  def draw?
    @player1.pick == @player2.pick
  end

end
