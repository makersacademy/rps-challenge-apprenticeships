feature 'declare winner of the game' do
    
    scenario 'show player1 win' do
        sign_in_and_play
        choose_rock
        choose_scissors
        expect(page).to have_content ('Anita wins!')
    end

    scenario 'show player1 lose' do
        sign_in_and_play
        choose_scissors
        choose_rock
        expect(page).to have_content ('Bob wins!')
    end

    scenario 'show draw' do
        sign_in_and_play
        choose_paper
        choose_paper
        expect(page).to have_content ('Draw!')
    end

end