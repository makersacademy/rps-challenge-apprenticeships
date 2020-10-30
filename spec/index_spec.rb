describe Game do
  let(:player) { Player.new("Bob") }
  let(:game) { Game.new(player) }

  describe 'game initialize' do
    it 'creates a new game' do
      expect(game).to be_a Game
    end

    it 'creates a player' do
      expect(game.player).to be_a Player
    end

    it 'creates a player with the name provided by the user' do
      expect(game.player.name).to eq "Bob"
    end

  end
end
