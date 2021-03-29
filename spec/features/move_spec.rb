feature 'player choices for game' do 
  scenario 'Rock button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, "Rock")
  end 

  scenario 'Paper button' do 
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, "Paper")
  end   

  scenario 'Scissors button' do 
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, "Scissors")
  end 
end
