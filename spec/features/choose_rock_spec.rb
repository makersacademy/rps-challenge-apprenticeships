feature 'Display weapon choice: ' do
  scenario 'a user can see the weapon they chose - rock' do
    visit('/play')
    fill_in :choice, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'You chose: rock'
  end
end