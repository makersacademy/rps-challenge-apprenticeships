RSpec.describe Rps do
  describe '#play' do
    it 'returns either "You won!", "You lost!" or "You drew!"' do
      expect(["You won!", "You lost!", "You drew!"].include?(subject.play('rock'))).to eq true
    end
  end
end
