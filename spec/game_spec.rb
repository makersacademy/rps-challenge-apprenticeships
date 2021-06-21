require "game"

describe Game do
  subject(:game) { Game.new }

  it "returns a randomly generated move" do
    allow(Random).to receive(:rand).and_return(1)
    expect(game.random_weapon).to eq "paper"
  end
end
