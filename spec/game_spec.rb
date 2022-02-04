require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  it 'knows whos playing' do
    expect(game.players).to include(player)
  end

  it 'can decide a winner' do
    player = double(:player, :name => "player")
    allow(game).to receive(:rps).and_return("Rock")
    expect(game.winner?("Scissors")).to eq("player wins!")
  end

end
