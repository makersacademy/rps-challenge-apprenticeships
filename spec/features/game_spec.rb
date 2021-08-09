require "game"

describe Game do
  before do 
    @result = Game.new("Michael", "Tomi")
  end
  describe "#winner" do
    it "should return player_1 if player 1 wins" do
      @result.move("rock", "scissors")
      expect(@result.winner).to(eq("Michael"))
    end

    it "should return its a draw if both players put the same thing" do
      @result.move("rock", "rock")
      expect(@result.winner).to(eq("draw"))
    end
    it "should return player_2 if player 2 wins" do
      @result.move("scissors", "rock")
      expect(@result.winner).to(eq("Tomi"))
    end
  end
end
