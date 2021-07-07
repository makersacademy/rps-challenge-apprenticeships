require 'game'

describe 'random game response' do
  it 'randomly chooses rock, paper or scissors' do
    game = double(:game, randomize: "rock")
    expect(game.randomize).to eq "rock"
  end

describe 'game determines a winner' do
  it 'selects a winner based on player choice and computer response' do
    game = double(:game, randomize: "rock", win: "Player wins!")
    player = double(:player, initialize: "paper")
    expect(game.win("rock", "paper")).to eq 'Player wins!'
  end

  it 'asks to try again if choices as the same' do
    game = double(:game, randomize: "paper", win: "Try again")
    player = double(:player, initialize: "paper")
    expect(game.win("paper", "paper")).to eq "Try again"
  end
end
end
