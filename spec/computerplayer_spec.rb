require 'computerplayer'

describe ComputerPlayer do
  let(:r2d2) { ComputerPlayer.new }
  describe 'Provides RPS decision' do
    it 'when computer choice method called, RPS decision made' do
      allow(r2d2).to receive(:computerchoice).and_return("Rock")
      expect(r2d2.computerchoice).to eq 'Rock'
    end
  end
end
