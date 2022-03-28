require "game"

RSpec.describe Game do 
  context "if the player and the computer select the same weapon" do
    it "is a draw" do
      game = Game.new
      player_weapon = Game::rock
      computer_weapon = Game::rock
      result = game.result(player_weapon,computer_weapon)
      expect(result).to eq :draw
    end
  end

  context "if the player select rock and the computer scissors" do
    it "is a win for the player" do
      game = Game.new
      player_weapon = Game::rock
      computer_weapon = Game::scissors
      result = game.result(player_weapon,computer_weapon)
      expect(result).to eq :win
    end
  end

  context "if the player select paper and the computer scissors" do
    it "is a lost for the player" do
      game = Game.new
      player_weapon = Game::paper
      computer_weapon = Game::scissors
      result = game.result(player_weapon,computer_weapon)
      expect(result).to eq :lose
    end
  end
end


