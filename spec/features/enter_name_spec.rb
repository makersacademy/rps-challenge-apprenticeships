feature 'Enter your name' do
  scenario 'Submit your name' do
    visit ('/')
    fill_in :player_name, with: 'Avril'
    #fill_in :computer, with: 'computer'
    click_button 'Submit'
    expect(page).to have_content 'Avril'
  end
end
