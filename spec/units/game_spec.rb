require 'game'

describe Game do
  
  describe "#random_move" do
    it "generates a random move for the computer" do
      new_game = Game.new
      expect(["Rock", "Paper", "Scissors"]).to include(new_game.random_move)
    end
  end

end
