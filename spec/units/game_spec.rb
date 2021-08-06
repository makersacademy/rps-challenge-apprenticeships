require './lib/game.rb'

describe Game do
  describe '#present' do
    it 'presents choices to the player' do
      expect(subject.present).to eq "Rock, Paper, Scissors"
    end
  end
  
end