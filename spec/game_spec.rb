require_relative '../model/game'

describe Game do 

  describe '#random' do 

    it 'checks random works and can return a number' do 

      allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(2)
      expect(subject.random_num).to eq (2)

    end 

    it 'checks we can get a random output' do 

      allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(2)
      expect(subject.opponent).to eq "Scissors"

    end

  end 

  describe '#win_or_loss' do 

    it 'checks win or loss' do
      
      expect(subject.win_or_lose("Rock", "Scissors")).to eq "Player 1 Wins"

    end 

  end 

end 