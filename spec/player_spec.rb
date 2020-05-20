require 'player'

describe Player do
  subject(:player) { Player.new('Kate') }
  let(:options) { {"name" => "Kate", "computer" => :rock, "outcome" => :neutral} }

  describe '#name' do
    it 'returns the name' do
      kate = Player.new('Kate')
      expect(kate.name).to eq 'Kate'
    end

    it 'returns the initialized name' do
      test = Player.new('test')
      expect(test.name).to eq 'test'
    end
  end

end
