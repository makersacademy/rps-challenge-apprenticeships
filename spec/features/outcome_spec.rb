feature "shows the outcome of the game" do
    scenario "player can win the game" do
        allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(2)
        play_move("Rock")
        expect(page).to have_content("stella Wins")
    end

    scenario "player can lose the game" do
        allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(1)
        play_move("Rock")
        expect(page).to have_content("Computer Wins")
    end

    scenario "player can tie in a game" do
        allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(0)
        play_move("Rock")
        expect(page).to have_content("Tie")
    end
end