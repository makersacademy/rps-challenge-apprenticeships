require 'game'

describe Game do
  xit "returns a random rock, paper or scissors for computer choice" do
game_1 = Game.new("Leigh")
expect(game_1.computer_choice).to eq ("rock" || "paper" || "scissors")
  end

  describe Game do
    xit "gives a winner" do
  game_1 = Game.new("Leigh")
  expect(game_1.computer_choice).to eq ("rock" || "paper" || "scissors")
    end
end
end
