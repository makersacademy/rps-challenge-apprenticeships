require 'game'

describe Game do

  let(:player) { double :player, name: 'Player', weapon: 'rock' }
  let(:computer_player) { double :player, name: 'Computer Player', weapon: 'paper' }
  let(:other_player) { double :player, name: 'Other Player', weapon: 'rock' }
  subject(:game) { described_class.new(player, computer_player) }
  subject(:game_other) { described_class.new(player, other_player) }

  describe '#compare' do
    it 'compares the players weapons and returns the winner : computer wins' do
      expect(game.compare).to eq('Computer Player wins')
    end
    it 'compares the players weapons and returns the winner : draw' do
      expect(game_other.compare).to eq("It's a draw")
    end
  end
end