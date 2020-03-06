feature 'Enter name' do
  scenario 'submitting name' do
    start_playing
    expect(page).to have_content 'Aladin welcome, choose your weapon'
  end
end

feature 'View the weapons' do
  scenario 'see wapons' do
    start_playing
    click_button 'Submit'
  end
end
