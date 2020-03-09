require 'game'

describe Game do
#This tests if the instance variable weapons can take the method sample
  it "chooses a weapon for the computer" do
    game = Game.new
    expect(game.weapons).to receive(:sample)
    game.choose_weapon
  end

#This method tests if the method to compare weapons works with a mock
  it "compares the computer's and player's weapons to select a winner" do
    computer_weapon = double(:computer_weapon => "paper")
    player_weapon = double(:player_weapon => "paper")
    p computer_weapon
    p player_weapon
    expect(subject.choose_winner).to eq("It's a draw!")


  end
end
