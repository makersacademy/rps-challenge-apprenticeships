feature 'Enter name' do
  scenario 'marketeer enters name' do
    visit('/')
    fill_in :player_name, with: 'Emma'
    click_button 'Submit'
    expect(page).to have_content 'Get ready to play, Emma!'
  end
end