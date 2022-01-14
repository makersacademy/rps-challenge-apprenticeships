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

  describe '#play' do
    context 'when multiplayer' do
      it 'Rock beats scissors' do
        subject = RPSGame.new("Freddy", "Jason")
        expect(subject.play('Rock', 'Scissors')).to eq('Freddy')
      end
      it 'Paper beats rock' do 
        subject = RPSGame.new("Freddy", "Jason")
        expect(subject.play('Rock', 'Paper')).to eq('Jason')
      end
      it 'Scissors beats papers' do
        subject = RPSGame.new("Freddy", "Jason")
        expect(subject.play('Scissors', 'Paper')).to eq('Freddy')
      end
      it 'Scissors draws scissors' do
        subject = RPSGame.new("Freddy", "Jason")
        expect(subject.play('Scissors', 'Scissors')).to eq('Draw')
      end
    end

  end

end