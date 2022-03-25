feature 'Enter name' do
    scenario 'submitting name' do
        visit('/')
        fill_in :player_name, with: 'Juliana'
        click_button 'Submit'

        save_and_open_page

        expect(page).to have_content 'Hi Juliana, choose rock, paper or scissors.'
    end
end