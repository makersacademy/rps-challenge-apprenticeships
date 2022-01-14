require 'game'

describe Game do
  let(:player1) { double(:player1, name: "Radagast", action: true, attack: "Rock") }
  let(:player2) { double(:player2, name: "Computer", action: true, attack: "Scissors") }
  let(:game) { Game.new(player1, player2) }

  it 'initializes with two players' do
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end
  it 'calculates a draw' do
    game.play(player1.attack, player1.attack)
    expect(game.winner).to eq "Draw"
  end
  it 'player 1 wins' do
    game.play(player1.attack, player2.attack)
    expect(game.winner).to eq player1
  end
  it 'player 2 wins' do
    game.play(player2.attack, player1.attack)
    expect(game.winner).to eq player2
  end

end
