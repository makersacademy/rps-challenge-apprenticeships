require 'player'

describe Player do
  subject(:david) { Player.new('David')}

  describe '#name' do
    it 'returns the name' do
      expect(david.name).to eq 'David'
    end
  end

  describe '#action' do
    it 'returns the action as nil' do
      expect(david.selection).to eq nil
    end

    it 'returns the action as the action if taken' do
      david.action("rock")
      expect(david.selection).to eq "rock"
    end
  end
end
