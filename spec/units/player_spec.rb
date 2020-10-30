require 'player'

describe Player do
  describe 'new' do
    let(:subject) { Player.new("Jack") }
    it 'makes a player with a name that can be stored' do
      expect(subject.player_name).to eq 'Jack'
    end
  end
end
