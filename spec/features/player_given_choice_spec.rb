feature 'Player given choice' do
  scenario 'rock paper scissors?' do
    sign_in_and_play
    expect(page).to have_content("Rock")
  end

  scenario 'selected rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content("You selected Rock!")
  end
end
