feature 'Enter names' do
    scenario 'submitting names' do
        sign_in_and_play
        expect(page).to have_content "Welcome to the game #{@player_1_name}!"
    end
end