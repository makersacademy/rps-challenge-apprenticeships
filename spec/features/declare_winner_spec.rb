feature 'declare winner of the game' do
    scenario 'show player won' do
        srand(5)
        sign_in_and_play
        choose_rock
        expect(page).to have_content ('Computer played: scissors')
        expect(page).to have_content ('Anita wins!')
    end
    scenario 'show player lost' do
        srand(10)
        sign_in_and_play
        choose_rock
        expect(page).to have_content ('Computer played: paper')
        expect(page).to have_content ('Computer wins!')
    end
    scenario 'show a draw' do
        srand(15)
        sign_in_and_play
        choose_rock
        expect(page).to have_content ('Computer played: rock')
        expect(page).to have_content ('Draw!')
    end
end