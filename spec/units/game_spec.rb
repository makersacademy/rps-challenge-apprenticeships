require './lib/game.rb'

describe Game do
  describe '#present_' do
    it 'presents choices to the player' do
      expect(subject.present).to eq "Rock, Paper, Scissors"
    end
  end

  pending describe '#player_choice' do
    it 'the player chooses their move' do     
    end
  end

  describe '#random' do
    it 'chooses a random option' do
      expect(subject.random).to be true
    end
  end

  pending describe '#winner' do 
    it 'presents the winner' do
    end
  end 
end