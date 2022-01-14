RSpec.describe RPSGame do

  let (:multiplayer_game) { described_class.new("Freddy", "Jason") }
  let (:singleplayer_game) { described_class.new("Freddy") }

  describe '#initialize' do
    context 'when single player' do
      it 'stores the players name' do
        expect(singleplayer_game.player_1).to eq("Freddy")
      end
      it 'stores Computer in player 2' do
        expect(singleplayer_game.player_2).to eq("Computer")
      end
    end
    context 'when multiplayer player' do
      it 'stores the second players name' do
        expect(multiplayer_game.player_2).to eq("Jason")
      end
    end
  end

  describe '#play' do
    context 'when multiplayer' do
      it 'Rock beats scissors' do
        expect(multiplayer_game.play('Rock', 'Scissors')).to eq('Freddy')
      end
      it 'Paper beats rock' do 
        expect(multiplayer_game.play('Rock', 'Paper')).to eq('Jason')
      end
      it 'Scissors beats papers' do
        expect(multiplayer_game.play('Scissors', 'Paper')).to eq('Freddy')
      end
      it 'Scissors draws scissors' do
        expect(multiplayer_game.play('Scissors', 'Scissors')).to eq('Draw')
      end
    end

  end

end