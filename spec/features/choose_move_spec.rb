feature 'Choose move' do
    scenario "displays the move buttons" do
        sign_in_and_play
        expect(page).to have_content 'stella choose your move!'
        expect(page).to have_content 'Rock'
        expect(page).to have_content 'Paper'
        expect(page).to have_content 'Scissors'
    end

    scenario "choose a Rock and redirect" do
        play_move("Rock")
        expect(page).to have_content 'stella played Rock'
    end

    scenario "choose a Paper and redirect" do
        play_move("Paper")
        expect(page).to have_content 'stella played Paper'
    end

    scenario "choose a Scissors and redirect" do
        play_move("Scissors")
        expect(page).to have_content 'stella played Scissors'
    end
end