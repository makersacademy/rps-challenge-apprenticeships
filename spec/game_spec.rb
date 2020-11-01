require 'game'

RSpec.describe Game do
  let(:player1) {double("Dan")}
  let(:player2) {double("Eddie")}
  subject { Game.new(player1, player2) }
  describe 'Initialize' do
    it "Sets the players" do
      expect(subject.players).not_to eq nil
    end
  end

  describe 'check_winner' do
    it 'returns draw' do
      expect(subject.check_winner("rock", "rock")).to eq "It's a draw!"
    end

    it 'returns p1 win' do
      expect(subject.check_winner("rock", "scissors")).to eq "Player 1 wins!"
    end

    it 'returns p2 win' do
      expect(subject.check_winner("rock", "paper")).to eq "Player 2 wins!"
    end
  end
end