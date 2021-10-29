feature 'Checks register page' do 

  scenario 'checks we have solo and multiplayer options' do 
    register_page
    expect(page).to have_content "Player 1:"
  end 

end 