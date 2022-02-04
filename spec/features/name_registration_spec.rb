feature 'register name' do
  scenario 'enter name' do
    
    visit('/')
    fill_in :player_name, with: 'Wilbur'
    click_button 'Submit'

    expect(page).to have_content 'Welcome Wilbur!'
  end

end
