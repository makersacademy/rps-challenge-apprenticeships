require 'game'

describe Game do
  let(:subject) { Game.new("Jack", "Josh") }
  describe '#new' do
    it 'creates a new game with and stores player ones name' do
      expect(subject.player_one).to eq "Jack"
    end
    it 'creates a new game with and stores player twos name' do
      expect(subject.player_two).to eq "Josh"
    end
  end

  describe '#who_won' do
    it 'selects a winner depending on the moves made' do
      expect(subject.who_won("Paper", "Scizzors")).to eq "Josh"
    end
  end
end
