require 'game'
require 'player'

describe Game do
  let(:player_one) { Player.new("Matt") }
  let(:player_two) { Player.new("CPU") }

  it 'produces outcome where it is a draw' do
    p1_selection = player_one.picks("Rock")
    p2_selection = player_two.picks("Rock")
    game = Game.new(player_one, player_two)
    expect(game.result).to eq "It's a Draw!"
  end

  it 'produces outcome where player one wins' do
    p1_selection = player_one.picks("Rock")
    p2_selection = player_two.picks("Scissors")
    game = Game.new(player_one, player_two)
    expect(game.result).to eq "#{player_one.name} wins"
  end

  it 'produces outcome where cpu wins' do
    p1_selection = player_one.picks("Rock")
    p2_selection = player_two.picks("Paper")
    game = Game.new(player_one, player_two)
    expect(game.result).to eq "#{player_two.name} wins"
  end
  
end