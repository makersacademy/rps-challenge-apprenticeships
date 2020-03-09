feature 'Allow user to enter name' do 
  scenario 'shows player name on page' do 
    register
    expect(page).to have_content "Hello Pikachu!"
  end 
end 