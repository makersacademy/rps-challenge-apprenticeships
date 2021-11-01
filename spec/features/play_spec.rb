feature 'Player' do
  scenario 'can choose rock' do
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    expect(page).to have_button("Rock")
  end

  scenario 'can choose rock as their choice' do 
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    click_button "Rock"
    expect(page).to have_content "Rock"
  end 

  
end