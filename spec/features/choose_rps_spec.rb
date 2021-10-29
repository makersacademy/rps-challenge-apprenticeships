feature 'Choose Rock, Paper or Scissors' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario 'Player chooses Rock' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario 'Player chooses Rock' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end


end