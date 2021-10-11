
feature 'Enter names' do

    before do 
        visit('/names')
        fill_in :player_1_name, with: 'Tom'
        click_button 'Submit'
    end 


    scenario 'See RPS options' do
        expect(page).to have_button 'Rock' 
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end
end