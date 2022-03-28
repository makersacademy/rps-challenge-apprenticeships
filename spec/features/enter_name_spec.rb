feature 'Enter name' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_name, with: 'Mars'
    click_button 'Submit'
    expect(page).to have_content 'Mars'
  end
end