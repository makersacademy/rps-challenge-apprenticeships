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
    context 'when two players' do
      it 'stores the second players name' do
        expect(multiplayer_game.player_2).to eq("Jason")
      end
    end
  end

  describe '#play' do
    context 'when two players' do
      it 'Rock beats scissors' do
        expect(multiplayer_game.play('Rock', 'Scissors')).to eq('Freddy')
      end
      it 'Rock loses against paper' do 
        expect(multiplayer_game.play('Rock', 'Paper')).to eq('Jason')
      end
      it 'Scissors beats papers' do
        expect(multiplayer_game.play('Scissors', 'Paper')).to eq('Freddy')
      end
      it 'Scissors loses against rock' do
        expect(multiplayer_game.play('Scissors', 'Rock')).to eq('Jason')
      end
      it 'Paper beats rock' do
        expect(multiplayer_game.play('Paper', 'Rock')).to eq('Freddy')
      end
      it 'Paper loses against scissors' do
        expect(multiplayer_game.play('Paper', 'Scissors')).to eq('Jason')
      end
      it 'raises an error when input not allowed' do
        expect { multiplayer_game.play('Rock', 'weiurasdfjc') }.to raise_error('Invalid Input by Player 2')
      end
    end
    context 'when single player' do
      it 'Paper draws Paper' do
        game = singleplayer_game
        allow(game).to receive(:computer_choice) { 'Paper' }
        expect(game.play('Paper')).to eq('Draw')
      end
      it 'raises an error when input not allowed' do
        expect { singleplayer_game.play('weiurasdfjc') }.to raise_error('Invalid Input by Player')
      end
    end

  end

end