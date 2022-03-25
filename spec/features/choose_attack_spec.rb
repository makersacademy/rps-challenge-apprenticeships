feature 'Choose attack' do
    scenario 'selecting attack' do
        visit('/game-time')
        choose "rock"
        click_button 'Submit'

        save_and_open_page

        expect(page).to have_content 'Juliana chose rock'
    end

    scenario 'comparing player attack with computer' do
        visit('/game-time')
        choose "rock"
        click_button 'Submit'

        save_and_open_page

        expect(page).to have_content 'Juliana'
end