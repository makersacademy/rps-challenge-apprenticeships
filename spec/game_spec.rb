require './lib/game' 

describe Game do
  player = Player.new('Marlon')
  subject(:game) { Game.new(Player.new(player)) }

  describe '#player' do
    it 'returns the player object from game class' do
      expect(game.player).to eq game.player
    end
  end

  describe '#player_name' do
    it 'returns the players name from game class' do
      expect(game.player_name).to eq game.player_name
    end
  end

  describe '#assign_move' do
    it 'assigns a move to the specified player object' do
      game.assign_move("Rock")
      expect(game.player.get_player_move).to eq "Rock"
    end
  end

  describe '#get_computer_move' do
    it 'returns a random move played by computer' do
      game.stub(:get_computer_move).and_return("Paper")
      expect(game.get_computer_move).to eq "Paper"
    end
  end
end