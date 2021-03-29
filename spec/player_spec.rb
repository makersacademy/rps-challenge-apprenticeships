require 'player'

describe Player do 
  subject(:sam) { Player.new('Sam') }

  describe '#name' do 
    it 'returns the name' do 
      expect(sam.name).to eq('Sam')
    end 
  end 
  it 'accepts the player move method' do 
    expect(subject).to respond_to(:player_move)
  end
  it 'accepts the move method' do 
  end 

end
