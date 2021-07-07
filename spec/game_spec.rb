require 'game.rb'

RSpec.describe Game do

  it 'returns rock, paper or scissors' do
    expect(subject.random_hand).to satisfy { |hand| hand == 'ROCK' or hand == 'PAPER' or hand == 'SCISSORS' }
  end

  it 'draw' do
    game = Game.new
    player_hand = "ROCK"

    allow(game).to receive(:random_hand).and_return('ROCK')
    computer_hand = game.random_hand

    expect(game.play(player_hand, computer_hand)).to eq("Draws!")
  end

  it 'player wins' do
    game = Game.new
    player_hand = "ROCK"

    allow(game).to receive(:random_hand).and_return('SCISSORS')
    computer_hand = game.random_hand

    expect(game.play(player_hand, computer_hand)).to eq("Wins!")
  end

  it 'computer wins' do
    game = Game.new
    player_hand = "ROCK"

    allow(game).to receive(:random_hand).and_return('PAPER')
    computer_hand = game.random_hand

    expect(game.play(player_hand, computer_hand)).to eq("Loses!")
  end
end
