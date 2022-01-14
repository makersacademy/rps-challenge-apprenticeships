require 'game'

describe Game do
  # let(:calculator) { double(:calculator, hitpoints: 0, reduce_hitpoints: 5) }
  let(:player_1) { double(:player_1, name: "Radagast", attack: "Rock") }
  let(:player_2) { double(:player_2, name: "Computer", attack: "Scissors") }
  let(:game) { Game.new(player_1, player_2) }
  # before(:each) do
  #   @player_1 = "Radagast"
  #   @player_2 = "Computer"
  #   @game = Game.new(@player_1, @player_2)
  # end
  it 'initializes with two players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end
  it 'calculates a winner' do
    game.play(player_1.attack, player_2.attack)
    expect(game.winner).to eq player_1
  end
  it 'calculates a draw' do
    game.play(player_1.attack, player_1.attack)
    expect(game.winner).to eq "Draw"
  end
end

# stores the two players
# works out who the winner is
# responds to winner with name