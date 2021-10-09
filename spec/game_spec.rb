require 'game'

describe Game do
  describe '#initialize' do
    let(:player1) { double :player }
    let(:player2) { double :player }
    subject(:game) { described_class.new(player1, player2) }
    it 'player 1' do
      expect(game.player1).to eq player1
    end
    it 'player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#winner' do
    it 'draws' do
      player1 =  double("player", :chosen => "rock", :choose => "")
      player2 =  double("player", :chosen => "rock", :choose => "")
      game = described_class.new(player1, player2)

      expect(game.winner).to eq("Draw") 
    end

    it 'player 1 wins' do
      player1 =  double("player", :chosen => "rock", :choose => "", :name => "Bob")
      player2 =  double("player", :chosen => "scissors", :choose => "")
      game = described_class.new(player1, player2)

      expect(game.winner).to eq("Bob Wins") 
    end

    it 'player 2 wins' do
      player1 =  double("player", :chosen => "paper", :choose => "")
      player2 =  double("player", :chosen => "scissors", :choose => "", :name => "Alice")
      game = described_class.new(player1, player2)

      expect(game.winner).to eq("Alice Wins") 
    end
  end
end
