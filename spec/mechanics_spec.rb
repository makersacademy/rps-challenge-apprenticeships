require 'mechanics'

describe Mechanics do
  describe '#game_mechanics' do
    it 'returns an ai choice' do
      test = subject.ai_side
      expect(test).to be_truthy
    end
    it 'returns draw for a draw' do
      expect(subject.game_play(:rock, :rock)).to eq(:draw)
    end
    it 'returns a win for a win' do
      expect(subject.game_play(:rock, :scissors)).to eq(:player_win)
    end
    it 'returns a win for a win' do
      expect(subject.game_play(:rock, :paper)).to eq(:ai_win)
    end

    it 'returns draw for a draw' do
      expect(subject.game_play(:paper, :paper)).to eq(:draw)
    end
    it 'returns a win for a win' do
      expect(subject.game_play(:paper, :rock)).to eq(:player_win)
    end
    it 'returns a win for a win' do
      expect(subject.game_play(:paper, :scissors)).to eq(:ai_win)
    end
    it 'returns draw for a draw' do
      expect(subject.game_play(:scissors, :scissors)).to eq(:draw)
    end
    it 'returns a win for a win' do
      expect(subject.game_play(:scissors, :paper)).to eq(:player_win)
    end
    it 'returns a win for a win' do
      expect(subject.game_play(:scissors, :rock)).to eq(:ai_win)
    end
  end
end
