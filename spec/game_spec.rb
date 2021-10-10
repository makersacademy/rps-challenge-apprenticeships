require "game"
describe Game do
  let(:player) { instance_double(Player, :name => "Ana") }
  let(:option) { double("option") }
  let(:rock) { instance_double(RockPaperScissors, :rock_option => "rock") }
  let(:paper) { instance_double(RockPaperScissors, :paper_option => "paper") }
  let(:scissors) { instance_double(RockPaperScissors, :scissors_option => "scissors") }
  describe "#initialize" do
    let(:game) { Game.new(option, player) }
    it "sets the player_name" do
      expect(game.player_name).to eq player
    end

    it "returns the choice of the player" do 
      expect(game.player_choice).to equal option
    end
  end
  describe "#computer_choice" do
    let(:game) { Game.new(option, player) }
    it "chooses at random from the three options" do
      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(0)
      expect(game.computer_choice).to eq ("rock")

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(1)
      expect(game.computer_choice).to eq ("paper")

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(2)
      expect(game.computer_choice).to eq ("scissors")
    end
  end

  describe "#round_player_rock" do 
    it "returns 3 potential results" do
      game = Game.new(rock.rock_option, player)
      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(0)
      expect(game.round_player_rock).to eq "Draw!"
  
      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(2)
      expect(game.round_player_rock).to eq "You won!"

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(1)
      expect(game.round_player_rock).to eq "You lost!"
    end 
  end

  describe "#round_player_paper" do 
    it "returns 3 potential results" do
      game = Game.new(paper.paper_option, player)
      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(1)
      expect(game.round_player_paper).to eq "Draw!"

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(0)
      expect(game.round_player_paper).to eq "You won!"

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(2)
      expect(game.round_player_paper).to eq "You lost!"
    end 
  end
  describe "#round_player_scissors" do 
    it "returns 3 potential results" do
      game = Game.new(scissors.scissors_option, player)
      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(2)
      expect(game.round_player_scissors).to eq "Draw!"

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(1)
      expect(game.round_player_scissors).to eq "You won!"

      expect_any_instance_of(Kernel).to receive(:rand).with(2).and_return(0)
      expect(game.round_player_scissors).to eq "You lost!"
    end
  end 
end
