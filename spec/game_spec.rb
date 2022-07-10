require './lib/game' 

describe Game do
  player = Player.new('Marlon')
  subject(:game) { Game.new(Player.new(player)) }

  describe '#player_name' do
    it 'returns the players name from game class' do
      expect(game.player_name.name).to eq 'Marlon'
    end
  end

  describe '#assign_move' do
    it 'assigns a move to the specified player object' do
      game.assign_move("Rock")
      expect(game.player.get_player_move).to eq "Rock"
    end
  end

end