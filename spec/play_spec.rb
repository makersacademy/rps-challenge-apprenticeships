describe Player do
  let(:player) { Player.new("Bob") }

  describe 'choice' do
    it 'is set to nil by default' do
      expect(player.choice).to eq nil
    end
  end
end

describe Game do
  let(:player) { Player.new("Bob") }
  let(:game) { Game.new(player) }

  describe 'comp_choice' do
    it 'sets comp choice to rock if rock randomly selected' do
      allow(game).to receive(:rand).and_return(0)
      expect(game.comp_choice).to eq(:rock)
    end

    it 'sets comp choice to paper if paper randomly selected' do
      allow(game).to receive(:rand).and_return(1)
      expect(game.comp_choice).to eq(:paper)
    end

    it 'sets comp choice to scissors if scissors randomly selected' do
      allow(game).to receive(:rand).and_return(2)
      expect(game.comp_choice).to eq(:scissors)
    end
  end

end
