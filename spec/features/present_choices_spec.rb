feature 'Present choices' do
  scenario 'present 3 options to player' do
    visit('/')
    fill_in :player_name, with: 'Emily'
    click_button 'Submit'
    expect(page).to have_content 'Emily: choose Rock, Paper or Scissors'
  end
end