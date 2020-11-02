require 'player'

describe Player do
  let(:subject) { Player.new("Jack") }
  describe '#new' do
    it 'makes a player with a name that can be stored' do
      expect(subject.player_name).to eq 'Jack'
    end
  end
  describe '#make_move' do
    it 'can store the move that the user makes' do
      subject.move_made("Rock")
      expect(subject.move).to eq "Rock"
    end
    it 'can make a random move if required' do
      allow(subject.available_move).to receive(:sample).and_return("Paper")
      subject.move_made(subject.available_move.sample)
      expect(subject.move).to eq "Paper"
    end
  end
end
