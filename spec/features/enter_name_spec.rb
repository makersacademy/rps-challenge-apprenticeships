feature 'Enter names on homepage' do
  scenario 'player can enter their name' do
    visit ('/')
    fill_in :player_1_name, with: 'Jim'
    click_button 'Submit'
    expect(page).to have_content 'Jim'
  end
end