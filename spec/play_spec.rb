describe Player do
  let(:player) { Player.new("Bob") }

  describe 'choice' do
    it 'is set to nil by default' do
      expect(player.choice).to eq nil
    end
  end
end
