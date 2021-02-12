require 'player'

describe Player do
    
  let(:player) { Player.new('Harry') }

  describe '#initalize' do
    it 'can return the players name' do
      expect(player.name).to eq('Harry')
    end
  end

  describe '#rock_paper_scissors' do
    it 'chooses rock paper or scissors' do
      expect(player.rock_paper_scissors('rock')).to eq('rock')
    end
  end

end
