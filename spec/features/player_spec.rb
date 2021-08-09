require "Game"

describe Player do
  describe "#name" do
    it "should save the name of the player" do
      player = Player.new("Michael")
      expect(player.name).to(eq("Michael"))
    end
  end
  describe "#move" do
    it "should save the player move" do
      player = Player.new("Michael")
      player.player_move("rock")
      expect(player.move).to(eq("rock"))
    end
  end
end