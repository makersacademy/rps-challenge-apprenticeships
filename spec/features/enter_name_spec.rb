feature 'Allow user to enter name' do 
  scenario 'shows player name on page' do 
    register_and_pick_rock
    expect(page).to have_content "Hello Pikachu!"
  end 
end 