
feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end

  scenario 'player can add their name for a personalised game' do
    visit "/"
    fill_in('player_1', with: 'Player 1')
    click_on('Play Game')
    expect(page).to have_content "Player 1 vs. CPU"
  end

  scenario 'player can click either rock, paper, or scissors buttons' do
    visit "/"
    fill_in('player_1', with: 'Player 1')
    click_on('Play Game')
    choose('rock')
    choose('paper')
    choose('scissors')
  end

  # scenario 'player selects either rock, paper, or scissors by clicking corresponding button'
  #   visit "/"
  #   fill_in('player_1', with: 'Player 1')
  #   click_on('Submit')
  #   find_button('Rock').click
  #   find_button('Paper').click
  #   find_button('Scissors').click
  # end
end


