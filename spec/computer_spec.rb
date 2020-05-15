require './lib/computer.rb'

describe Computer do
  player_2 = Computer.new

  it 'creates a new instance of itself' do
    expect(subject).to be_instance_of Computer
  end

  describe '#move' do
    it 'lets the computer pick a move at random' do
      expect(player_2).to respond_to :move
    end
  end
end
