require_relative '../model/game_multiplayer'
describe Multiplayer do 

  let(:game){Multiplayer.new("player1", "player2")}

  describe '#currentplayer' do 

    it 'checks we can get current player' do 
      expect(game.currentplayer).to eq "player1"
    end 

    it 'checks we can change player' do 
      game.switchturn
      expect(game.currentplayer).to eq "player2"
    end   
  end 

end 