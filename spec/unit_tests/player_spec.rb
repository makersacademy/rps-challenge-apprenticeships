require 'player'

describe Player do
    subject(:khalid) { Player.new('Khalid') }
    

    describe '#name' do
      it 'returns the name' do
        expect(khalid.name).to eq 'Khalid'
      end
    end
end     