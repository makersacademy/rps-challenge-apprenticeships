require 'action' 

describe Action do 

  describe '#winner' do
    it 'displays the result: player 1 is winning' do
      expect(Action.winner("rock", "scissors")).to eq 'player 1 is winning'
    end

    it 'its a draw' do
      expect(Action.winner("paper", "paper")).to eq "it's a draw"
    end

    it 'displays the result: player 2 is winning' do
      expect(Action.winner("rock", "paper")).to eq 'player 2 is winning'
    end
  end

end 