require 'domain/player'

describe Player do
  let(:name) { "Harry" }
  let(:subject) { described_class.new(name) }
  it 'has a name' do
    expect(subject.name).to eq name
  end

  describe '#wins' do
    it 'starts with 0 wins' do
      expect(subject.wins).to eq 0
    end

    it 'equals 5 after 5 wins' do
      5.times { subject.add_win }
      expect(subject.wins).to eq 5
    end
  end

  describe '#add_win' do
    it 'adds a win to the players record' do
      expect { subject.add_win }.to change { subject.wins }.by 1
    end
  end

  describe '#add_loss' do
    it 'adds a win to the players record' do
      expect { subject.add_loss }.to change { subject.losses }.by 1
    end
  end

  describe '#losses' do
    it 'starts with 0 losses' do
      expect(subject.losses).to eq 0
    end

    it 'equals 5 after 5 losses' do
      5.times { subject.add_loss }
      expect(subject.losses).to eq 5
    end
  end

  describe '#total_games_played' do
    it 'starts with 0 total games played' do
      expect(subject.total_games_played).to eq 0
    end
    it 'equals 10 after 5 wins and losses' do
      5.times { subject.add_win }
      5.times { subject.add_loss }
      expect(subject.total_games_played).to eq 10
    end
  end

end
