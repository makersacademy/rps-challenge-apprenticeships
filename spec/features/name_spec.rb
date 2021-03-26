feature 'puts the users name' do
    scenario 'it allows the user to input a name' do 
        visit "/"
        fill_in :username, with: 'Alan'
        click_button 'Submit'
        expect(page).to have_content 'Alan vs. Computer'
    end
end