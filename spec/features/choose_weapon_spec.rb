feature 'Choose weapon: ' do
  scenario 'a user can see the weapon they chose' do
    visit('/play')
    fill_in :choice, with: 'rock'
    save_and_open_page
    expect(page).to have_content 'You chose: rock'
  end
end