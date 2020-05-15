require 'game'

describe "random game response" do
  it 'randomly chooses rock, paper or scissors' do
    game = double(:game, randomize: "rock")
    expect(game.randomize).to eq "rock"
  end
end
