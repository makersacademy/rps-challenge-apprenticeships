require 'player'

describe Player do
    subject(:khalid) { Player.new('Khalid') }
    let (:rock) {double :rock}
    

    describe '#name' do
      it 'returns the name' do
        expect(khalid.name).to eq 'Khalid'
      end
    end

#     describe '#rock paper scissors' do
#     it 'returns who won' do
#       expect(khalid.rock_paper_scissors(rock)).to eq 'You have won'
#     end
#   end



end     