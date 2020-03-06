feature 'Enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :player_name, with: 'Aladin'
    click_button 'Submit'
    expect(page).to have_content 'Aladin Welcome'
  end
end
