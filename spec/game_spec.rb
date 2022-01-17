require 'game'


describe Game do 

  subject(:game) { described_class.new(adam) }
  let(:adam) { double(Player, name: 'Adam', show_choice: 'rock') }
  let(:cpu) { double(Player, name: 'CPU', show_choice: 'scissors') }

  describe '#calculate winner' do 
    it 'returns a srtring of the winner' do 
      expect(subject.calculate_winner(adam, cpu)).to eq "Adam wins"
    end 
  end 

end 
