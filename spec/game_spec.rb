require 'game'

describe Game do

  let(:comp_choice) { "Paper" }
  let(:player_choice) { "Rock" }
  let(:game) { Game.new(player_choice, comp_choice) }


  it 'accepts player choice' do
    expect(game.player_choice).to eq("Rock")
  end

  it 'accepts computer choice' do
    expect(game.comp_choice).to eq("Paper")
  end

end