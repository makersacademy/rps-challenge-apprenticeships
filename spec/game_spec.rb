require 'game'

describe Game do

  let(:opponent) { double :opponent_double, comp_choice: "Paper" }
  let(:player) { double :player_double, choice: "Rock" }
  let(:game) { Game.new(player, opponent) }


  it 'accepts player choice' do
    expect(game.player_choice).to eq("Rock")
  end

  it 'accepts computer choice' do
    expect(game.comp_choice).to eq("Paper")
  end

  it 'chooses a winner' do
    expect(game.result).to eq("Computer wins")
  end

end