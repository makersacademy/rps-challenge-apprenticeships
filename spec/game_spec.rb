require 'game'

describe Game do

  let(:player_choice) { "Rock" }
  let(:game) { Game.new(player_choice) }

  it 'accepts player choice' do
    expect(game.player_choice).to eq("Rock")
  end

end