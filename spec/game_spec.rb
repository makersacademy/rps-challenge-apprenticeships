require 'game'

describe Game do
  describe 'creating a game object' do
    it 'creates a new object when provided 2 player objects' do
      player_1 = double(:player)
      player_2 = double(:player)
      @game = Game.create(player_1, player_2)
      @game = Game.instance
      expect(@game).to be_an_instance_of(Game)
    end

    it "allows us to access the player objects" do
      player_1 = double(:player)
      player_2 = double(:player)
      @game = Game.create(player_1, player_2)
      @game = Game.instance
      expect(@game.player1).to eq player_1
    end
  end
end
