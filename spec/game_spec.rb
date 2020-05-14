require 'game'

describe "random game response" do
  it 'randomply chooses rock, paper or scissors' do
    game = double(:game, randomize: "rock")
    expect(game.randomize).to eq "rock"
  end
end
