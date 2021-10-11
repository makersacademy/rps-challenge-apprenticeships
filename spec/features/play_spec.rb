require './app'

feature 'Choose weapon' do
  scenario 'choosing weapon' do
    visit('/play')
    expect(page).to have_checked_field with: 'ROCK', visible: false
    find('label[for=PAPER]').click
    expect(page).to have_checked_field with: 'PAPER', visible:false
    click_button 'Submit'
    expect(page).to have_conent('Anna vs Cylon')
  end
end