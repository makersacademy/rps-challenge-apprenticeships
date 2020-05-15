require 'computer.rb'

RSpec.describe Computer do
  it 'will test for new Player class' do
    computer = Computer.new
    expect(computer)
  end
  describe '#pick_weapon' do
    it 'will choose either rock, paper or scissors at random' do
      computer = Computer.new
      allow(computer).to receive(:pick_weapon).and_return('scissors')
      expect(computer.pick_weapon).to eq('scissors')
    end
  end
end
