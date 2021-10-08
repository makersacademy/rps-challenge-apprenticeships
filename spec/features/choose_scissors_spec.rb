feature 'Display weapon choice: ' do
  scenario 'a user can see the weapon they chose - scissors' do
    visit('/play')
    fill_in :choice, with: 'scissors'
    click_button 'Submit'
    expect(page).to have_content 'You chose: scissors'
  end
end