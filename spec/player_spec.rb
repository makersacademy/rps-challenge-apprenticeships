require 'player'

describe Player do 
  subject(:shanice) { Player.new('Justin') }

  describe '#player_name' do 
    it 'returns the name' do
      expect(shanice.name).to eq 'Justin'
    end
  end  
end 