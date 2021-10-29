feature 'Checks register page' do 

  scenario 'checks we have solo and multiplayer options' do 
    register_page
    expect(page).to have_selector(:link_or_button, "SOLO")
    expect(page).to have_selector(:link_or_button, "MULTIPLAYER")
  end 

end 