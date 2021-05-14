require 'weapon'

describe Weapon do
  subject(:weapon) { described_class.new(:rock) }
  let(:player_weapon) {:rock}
  let(:computer_weapon) {:scissors}

  context 'Calculates the result' do
    describe 'When player and computer are different' do
      it '#beats?' do
        expect(weapon.beats?(player_weapon, computer_weapon)).to eq true
      end
    end

    describe 'When player and computer are the same' do
      it '#draw' do
        expect(weapon.draw(player_weapon, computer_weapon)).to eq false
      end
    end

    describe '#result' do
      it 'stores the result' do
        expect(weapon.result(player_weapon, computer_weapon)).to eq :Win
      end
    end
  end

end
