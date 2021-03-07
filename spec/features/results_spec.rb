feature 'Results' do
    scenario 'the games a draw' do
        sign_in_and_play
        play_draw
        expect(page).to have_content "It's a draw"
    end
    scenario 'player 1 wins' do
        sign_in_and_play
        play_1wins
        expect(page).to have_content 'Dave wins'
    end
    scenario 'player 2 wins' do
        sign_in_and_play
        play_2wins
        expect(page).to have_content 'Mittens wins'
    end
end