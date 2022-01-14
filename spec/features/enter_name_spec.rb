feature 'user can enter their name' do
  scenario 'user enters their name and submits it' do
    visit('/')
    fill_in :player_name, with: 'Aadam'
    click_button 'Submit' 
    expect(page).to have_content 'Aadam vs Computer'
  end
end