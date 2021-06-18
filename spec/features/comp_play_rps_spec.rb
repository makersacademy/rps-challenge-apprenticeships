feature 'play rock, paper, scissors against the computer' do
    scenario 'play against computer' do
        srand(5)
        sign_in_and_play
        choose_rock
        expect(page).to have_content ('Computer played: scissors')
    end

    scenario 'play against computer' do
        srand(10)
        sign_in_and_play
        choose_rock
        expect(page).to have_content ('Computer played: paper')
    end
    
    scenario 'play against computer' do
        srand(15)
        sign_in_and_play
        choose_rock
        expect(page).to have_content ('Computer played: rock')
    end
end