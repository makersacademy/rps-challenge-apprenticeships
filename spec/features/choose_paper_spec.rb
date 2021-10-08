feature 'Display weapon choice: ' do
  scenario 'a user can see the weapon they chose - paper' do
    visit('/play')
    fill_in :choice, with: 'paper'
    click_button 'Submit'
    expect(page).to have_content 'You chose: paper'
  end
end