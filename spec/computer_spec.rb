require 'computer'

describe Computer do
  
  describe '#random_weapon' do
    it 'selects a random weapon for the computer' do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:rock)
      expect(subject.random_weapon).to eq :rock
    end
  end

end
