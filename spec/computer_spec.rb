require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choose_weapon' do
    
    it 'responds to choose_weapon' do
      expect(computer).to respond_to(:choose_weapon)
    end

    it 'picks a weapon' do
      expect(Computer::WEAPON).to include computer.choose_weapon
    end
  end
end