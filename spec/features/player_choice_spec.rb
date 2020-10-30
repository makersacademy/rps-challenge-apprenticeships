feature 'Allow player to pick their attack type' do
  scenario 'show player 3 options and display the one they picked(Rock)' do
    sign_in_and_play()
    click_button('Rock')
    expect(page).to have_content 'Ben picked Rock'
  end

  scenario 'show player 3 options and display the one they picked(Paper)' do
    sign_in_and_play()
    click_button('Paper')
    expect(page).to have_content 'Ben picked Paper'
  end

  scenario 'show player 3 options and display the one they picked(Scissors)' do
    sign_in_and_play()
    click_button('Scissors')
    expect(page).to have_content 'Ben picked Scissors'
  end
end
