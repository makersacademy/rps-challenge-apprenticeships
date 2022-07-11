describe Player do
  it "chooses a pc weapon at random" do
    player = Player.new
    expect(['rock', 'paper', 'scissors']).to include(player.pc_plays)
  end


  context "when player chooses rock" do
    it "correctly identifies win" do
      player = Player.new
      $pc_plays = "scissors"
      expect(player.rock).to eq "You win!"
    end

    it "correctly identifies lost" do
      player = Player.new
      $pc_plays = "paper"
      expect(player.rock).to eq "You lose!"
    end

    it "correctly identifies draw" do
      player = Player.new
      $pc_plays = "rock"
      expect(player.rock).to eq "It's a tie!"
    end
  end

  context "when player chooses scissors" do
    it "correctly identifies win" do
      player = Player.new
      $pc_plays = "paper"
      expect(player.scissors).to eq "You win!"
    end

    it "correctly identifies lost" do
      player = Player.new
      $pc_plays = "rock"
      expect(player.scissors).to eq "You lose! :("
    end

    it "correctly identifies draw" do
      player = Player.new
      $pc_plays = "scissors"
      expect(player.scissors).to eq "It's a tie!"
    end
  end

  context "when player chooses paper" do
    it "correctly identifies win" do
      player = Player.new
      $pc_plays = "rock"
      expect(player.paper).to eq "You win!"
    end

    it "correctly identifies lost" do
      player = Player.new
      $pc_plays = "scissors"
      expect(player.paper).to eq "You lose!"
    end

    it "correctly identifies draw" do
      player = Player.new
      $pc_plays = "paper"
      expect(player.paper).to eq "It's a tie!"
    end
  end
end


