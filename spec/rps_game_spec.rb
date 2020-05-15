require './lib/rps_game.rb'

describe Game do

  it 'creates a new instance of itself' do
    expect(subject).to be_instance_of Game
  end

  describe '#player_1' do
    it 'displays the players name' do
      expect(subject.player_1).to eq 'Player 1'
    end
  end

  describe '#fight' do
    it 'lets the two players play against each other'do
      expect(subject.fight).to respond_to :fight
    end

    # it 'tells you who has won the game'
    # expect(subject.fight).to respond_to :winner
  end
end
