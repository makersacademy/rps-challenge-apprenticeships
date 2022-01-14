RSpec.describe RPSGame do

  describe '#initialize' do
    context 'when single player' do
      it 'stores the players name' do
        subject = RPSGame.new("Freddy")
        expect(subject.player_1).to eq("Freddy")
      end
      it 'stores Computer in player 2' do
        subject = RPSGame.new("Freddy")
        expect(subject.player_2).to eq("Computer")
      end
    end
    context 'when multiplayer player' do
      it 'stores the second players name' do
        subject = RPSGame.new("Freddy", "Jason")
        expect(subject.player_2).to eq("Jason")
      end
    end
  end

end