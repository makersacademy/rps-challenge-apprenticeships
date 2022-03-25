feature 'Register name' do 
    scenario 'submitting name' do 
        visit('/')
        fill_in :player_name, with: 'Jenny'
        click_button 'Submit'

        expect(page).to have_content 'Welcome Jenny! Ready to play Rock, Paper, Scissors? Make your move:'
    end
end