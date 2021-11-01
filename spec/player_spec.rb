require 'player'

describe Player do 
  subject(:justin) { Player.new('Justin') }
  

  describe '#player_name' do 
    it 'returns the name' do
      expect(justin.name).to eq 'Justin'
    end
  end
  
  describe '#playing_selection' do
    it 'returns the choice' do
      expect(justin.play_game("Paper")).to eq 'You have selected Paper'
    end 
  end 
end 