require 'game'

RSpec.describe "New Game" do
  # it "creates a computer choice" do
  #   new_game = Game.new
  #   expect(new_game.computer_choice).to eq ['Rock', 'Paper', 'Scissors'].sample
  # end

  context "it's a draw" do
    it "returns 'It's a draw!'" do
      new_game = Game.new
      expect(new_game.play('Rock')).to eq "It's a draw!"
    end
  end

  context "computer wins" do
    it "returns 'Computer wins!'" do
      new_game = Game.new
      expect(new_game.play('Scissors')).to eq "Computer wins!"
    end
  end

  context "user wins" do
    it "returns 'You win!'" do
      new_game = Game.new
      expect(new_game.play('Paper')).to eq "You win!"
    end
  end
end
