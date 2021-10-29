feature 'player weapon is displayed' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Scott chose: Rock')
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('Scott chose: Paper')
  end

  scenario 'player chooses scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('Scott chose: Scissors')
  end

end