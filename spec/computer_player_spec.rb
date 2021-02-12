require 'computer_player'

describe ComputerPlayer do

  subject(:super_computer) { described_class.new() }

  describe '#name' do
    it 'returns the name of the computer player' do
      expect(super_computer.name).to eq('Super Computer')
    end
  end

  describe '#random_weapon' do
    it 'check random_weapon calls .sample' do
      expect(super_computer.weapon_list).to receive(:sample)
      super_computer.random_weapon
    end

    it 'check random_choice returns what sample gives' do
      allow(super_computer.weapon_list).to receive(:sample).and_return('scissors')
      expect(super_computer.random_weapon).to eq('scissors')
    end
  end
end