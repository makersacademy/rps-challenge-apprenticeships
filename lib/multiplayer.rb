class Multiplayer
  attr_reader :first_player, :second_player

  def initialize(first_player, second_player)
    @first_player = first_player
    @second_player = second_player
  end

  def play
    return "It's a draw!" if draw
    return "#{@first_player.name} wins!" if player_1_wins
    return "#{@second_player.name} wins!" if player_2_wins
  end

  private

  def draw
    return true if @first_player.choice == @second_player.choice
  end

  def player_1_wins
    return true if @first_player.choice == 'Rock' && @second_player.choice == 'Scissors' 
    return true if @first_player.choice == 'Paper' && @second_player.choice == 'Rock'
    return true if @first_player.choice == 'Scissors' && @second_player.choice == 'Paper'
  end

  def player_2_wins
    return true if @first_player.choice == 'Paper' && @second_player.choice == 'Scissors' 
    return true if @first_player.choice == 'Scissors' && @second_player.choice == 'Rock'
    return true if @first_player.choice == 'Rock' && @second_player.choice == 'Paper'
  end
end
