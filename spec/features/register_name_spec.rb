feature 'Register name' do
  scenario 'register and print my name' do
    visit('/')
    fill_in :player_1, with: 'Anastasia'
    click_button 'Start game'
    expect(page).to have_content 'Anastasia'
  end
end
