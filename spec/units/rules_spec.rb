require 'rules'

describe Rules do

    let(:rules) { Rules.new }

    it 'has a list of possible moves' do
        expect(rules.moves).to eq Rules::MOVES
    end

    it 'provides information about which moves beat which' do
        expect(rules.beats).to eq Rules::BEATS
    end
end