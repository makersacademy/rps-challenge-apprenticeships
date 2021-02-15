feature 'Submitting username' do
  scenario 'enters name' do
    visit('/')
    fill_in :player_1_name, with: 'Mitchell'
    click_button 'Submit'
    expect(page).to have_content 'Mitchell Vs RUBY!'
  end
end
