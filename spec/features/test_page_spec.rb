feature 'name form' do
  scenario 'submitting name' do
    visit '/start'
    fill_in :name, with: 'Amy'
    click_button 'Submit your name'
    expect(page).to have_content('Amy')
  end
end
