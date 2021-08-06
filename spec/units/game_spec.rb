require './lib/game.rb'

describe Game do
  subject(:play) { described_class.new }
  describe '#present' do
    it 'presents choices to the player' do
      expect(play.present).to include "Rock, Paper, Scissors"
    end
  end

  describe '#player_move' do
    it 'the player chooses their move' do
      play.submit_move("Scissors")
      expect(play.player_move).to eq "Scissors"     
    end
  end

  describe '#random' do
    it 'chooses a random option' do
      allow(play).to receive(:random).and_return("Rock")
      expect(play.random).to eq "Rock"
    end
  end

  describe '#winner' do 
    it 'presents the winner' do
      allow(play).to receive(:random).and_return("Rock")
      play.submit_move("Scissors")
      expect(subject.winner).to eq "Computer Wins"
    end
  end 
end