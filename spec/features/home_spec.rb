require './app.rb'

feature 'homepage' do 
    scenario 'visit home page' do 
        visit "/"
        expect(page).to have_content('Rock, Paper, Scissors')
    end

    scenario 'visit home page' do 
        visit "/"
        expect(page).to have_content('Input a name to play!')
    end

    scenario 'it allows the user to input a name' do 
        visit "/"
        fill_in :username, with: 'Alan'
        click_button 'Submit'
        expect(page).to have_content 'Alan vs. Computer'
    end
    

end