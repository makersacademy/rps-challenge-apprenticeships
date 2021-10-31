feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Raul'
    click_button 'Submit'
    expect(page).to have_content "Raul: welcome to the RPS game"
  end
end
