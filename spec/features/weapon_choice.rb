feature 'see weapons' do

  scenario 'Player can see choice of weapons' do
    sign_in_and_play

    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end 

end 