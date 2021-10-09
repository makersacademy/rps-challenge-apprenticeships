feature "Results" do
  let(:player) { instance_double(Player, :name => "Ana") }
  let(:rock) { instance_double(RockPaperScissors, :rock_option => "rock") }
  let(:paper) { instance_double(RockPaperScissors, :paper_option => "paper") }
  let(:scissors) { instance_double(RockPaperScissors, :scissors_option => "scissors") }
  scenario "shows the result of choosing rock" do
    # game = Game.new(rock.rock_option, player)
    # expect_any_instance_of(Kernel).to receive(:rand).with(3).and_return(0)
    # allow(:player_choice).to receive(:rand).with(3).and_return(0)
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Rock")
    expect(page).to have_content $player_choice.round_player_rock
  end
end